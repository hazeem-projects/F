from django.shortcuts import render
from datetime import datetime

# Create your views here.

def display(request):
    message='Hi '
    date=datetime.now()
    hour=int(date.strftime('%H'))
    if hour < 12:
        message+='Good Morning'
    else:
        message+='Good Evening'
    date_dic={'display_date': date,'greetings':message}
    return render(request,'mockApp/Abc.html',context =date_dic)
