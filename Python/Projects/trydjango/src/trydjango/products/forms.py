from django import forms
from .models import Product


class ProductForm(forms.ModelForm):

    title = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'your title'}))
    # override attributes
    description = forms.CharField(
                        required=False,
                        widget=forms.Textarea(
                                attrs={
                                    'class': 'new-class-name two',
                                    'rows': 10,
                                    'cols': 40,
                                    'placeholder': 'Add a description'
                                }))
    price = forms.DecimalField(initial=199.99)
    email = forms.EmailField()

    class Meta:
        model = Product
        fields = [
            'title',
            'description',
            'price'
        ]


    def clean_title(self, *args, **kwargs):
        """ Validate that 'AMM' IS in the title, if not it will error """
        title = self.cleaned_data.get('title')

        if not 'AMM' in title:
            raise forms.ValidationError('This is not a valid title')
        return title


    def clean_email(self, *args, **kwargs):
        """ Validdates that the email is valid """
        email = self.cleaned_data.get('email')

        if not email.endswith('edu'):
            raise forms.ValidationError('This is not a valid email')
        return email


class RawProductForm(forms.Form):
    title = forms.CharField(widget=forms.TextInput(attrs={'placeholder': 'your title'}))
    # override attributes
    description = forms.CharField(
                        required=False,
                        widget=forms.Textarea(
                                attrs={
                                    'class': 'new-class-name two',
                                    'rows': 10,
                                    'cols': 40
                                }))
    price = forms.DecimalField(initial=199.99)
