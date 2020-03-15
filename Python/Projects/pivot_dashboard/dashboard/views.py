from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
from dashboard.models import Order
from django.core import serializers

def dashboard_with_pivot(requests):
    return render(requests, 'base.html', {})

def pivot_data(request):
    dataset = Order.objects.all()
    data = serializers.serialize('json', dataset)

    return JsonResponse(data, safe=False)
