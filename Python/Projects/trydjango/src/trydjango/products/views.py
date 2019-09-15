from django.shortcuts import render
from .models import Product
from .forms import ProductForm, RawProductForm

# Create your views here.
def product_detail_view(request):
    obj = Product.objects.get(id=1)

    context = {
        'object': obj
    }

    return render(request, 'products/product_detail.html', context)


# def product_create_view(request):
#     """ Pure Django form """
#     form = RawProductForm()

#     if request.method == 'POST':
#         form = RawProductForm(request.POST)
#         if form.is_valid():
#             # data is good
#             print(form.cleaned_data)
#             Product.objects.create(**form.cleaned_data)
#         else:
#             print(form.errors)
#     context = {
#         'form': form
#     }

#     return render(request, 'products/product_create.html', context)


# def render_intial_data(request):
#     initial_data = {
#         'title': 'initial title data'
#     }

#     obj = Product.objects.get(id=1)
#     form = ProductForm(request.POST or None, initial=initial_data, instance=obj)
#     context = {
#         'form': form
#     }

#     return render(request, 'products/product_create.html', context)


def dynamic_lookup_view(request, id):
    obj = Product.objects.get(id=1)
    context = {
        'object': obj
    }

    return render(request, 'products/product.html', context)


def product_create_view(request):
    """ Form template """
    form = ProductForm(request.POST or None)

    if form.is_valid():
        form.save()
        # re-renders the form
        form = ProductForm()

    context = {
        'form': form
    }

    return render(request, 'products/product_create.html', context)

