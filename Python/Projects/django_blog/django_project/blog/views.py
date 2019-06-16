from django.shortcuts import render

# Logic for site routes

# Dummy data
posts = [
    {
        'author': 'Andrew M',
        'title': 'Blog Post 1',
        'content': 'First post content',
        'date_posted': 'June 16, 2019'
    },
    {
        'author': 'Gus',
        'title': 'Blog Post 2',
        'content': 'Second post content',
        'date_posted': 'May 2, 2019'
    }
]

def home(request):
    context = {
        'posts': posts
    }
    return render(request, "blog/home.html", context)


def about(request):
    return render(request, "blog/about.html", {'title': 'About'})