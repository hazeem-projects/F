from django.shortcuts import render
from django.http import HttpResponse


def wish(request):
    message='<h1>Hi Buddy how are you</h1>'
    return HttpResponse(message)


# Create your views here.
#http:127.0.0.1:8000/wish

#HTTPResponse


