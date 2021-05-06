from django.contrib.auth.models import User
from .forms import UserRegisterForm
from django.views.generic import CreateView,DeleteView,ListView,UpdateView
from django.urls import reverse_lazy

class UserCreate(CreateView):
    model=User
    form_class=UserRegisterForm
    template_name='registrar_usuario.html'
    success_url=reverse_lazy('index')