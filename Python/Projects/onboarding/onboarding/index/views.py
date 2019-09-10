from django import forms
from django.shortcuts import render
from django.http import HttpResponse
from django.views.generic import CreateView
from google.models import Google

class GoogleOnboarding(CreateView, forms.Form):
    model = Google
