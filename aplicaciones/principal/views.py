from django.shortcuts import render

def inicio_principal(request):
    return render(request,'index.html')
