from django.shortcuts import render
from django.http import HttpResponse

# Logic for site routes

def home(request):
    return HttpResponse('<h1> Blog Home </h1>')


def about(request):
    return HttpResponse('<h1> Blog About </h1>')
