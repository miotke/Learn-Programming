from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from tutorial.auth_helper import get_sign_in_url, get_token_from_code
from tutorial.graph_helper import get_user

# Create your views here.
def home(request):
    context = initialize_context(request)
    return render(request, "tutorial/home.html", context)


def initialize_context(request):
    context = {}

    # Check for any errors in the session
    error = request.session.pop("flash_error", None)

    if error != None:
        context["errors"] = []
        context["errors"].append(error)

    # Check for user in the session
    context["user"] = request.session.get("user", {"is_authenticated": False})
    return context


def sign_in(request):
    # Get the sign-in URL
    sign_in_url, state = get_sign_in_url()
    # Save the expected state so we can validate the callback
    request.session["auth_state"] = state
    # Redirect to the Azure sign-in page
    return HttpResponseRedirect(sign_in_url)


def callback(request):
    # Get teh state saved in session
    expected_state = request.session.pop("auth_state", "")
    # Make the token request
    token = get_token_from_code(request.get_full_path(), expected_state)

    # Get the user's profile
    user = get_user(token)
    # Temporary! Save the reponse in the error so it's displayed
    request.session["flash_error"] = {'message': 'Token retrieved', 'debug': 'User: {0}\nToken: {1}'.format(user, token)}
    return HttpResponseRedirect(reverse("home"))