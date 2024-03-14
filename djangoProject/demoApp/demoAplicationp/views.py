from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def gm_view(request):
    return HttpResponse('<h1>Good morning</h1>')

def gm_eveng(request):
    return HttpResponse('<h1>Good evening</h1>')

def gm_aftr(request):
    return HttpResponse('<h1>Good afternoon</h1>')