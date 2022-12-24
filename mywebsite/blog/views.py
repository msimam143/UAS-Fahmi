from django.shortcuts import render,redirect
from django.contrib import messages
from . import models
from . import forms

def index(request):
    data_artikel = models.artikel.objects.all()
    context = {
        'halaman':'list artikel',
        'data':data_artikel,
    }
    return render(request, 'blog/index.html',context)

def show(request,blogslug):
    if request.method=='POST':
        models.komen.objects.create(
            artikel = models.artikel.objects.get(id=request.POST['kode']),
            email = request.POST['email'],
            isi = request.POST['isi'],
        )
        messages.success(request,'komentar Disimpan')
        return redirect('blog:show' ,blogslug)


    context = {
        'formnya':forms.komen_form(),
        'halaman':'detail artikel',
        'komens':'data_komen',
    }
    return render(request, 'blog/show.html',context)