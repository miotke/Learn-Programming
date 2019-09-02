from django import forms
from .models import Google
from django.views.generic import CreateView


class CreateGoogleForm(CreateView, forms.ModelForm):
    model = Google

    fields = [
        'first_name',
        'last_name',
        'cost_center',
        'job_role',
        'floor',
        'location',
    ]


    def form_valid(self, form):
        return super().form_valid(form)
