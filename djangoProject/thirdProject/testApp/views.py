from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.

def one(request):
    return HttpResponse("<h1>One</h1>")

def four(request):
    return HttpResponse('<h1>Four</h1>')
def two(request):
    return HttpResponse('<h1>Two</h1>')

def three(request):
    return HttpResponse('<h1>Threee</h1>')