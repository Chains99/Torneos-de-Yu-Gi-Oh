from .forms import JugadorUserRegisterForm
from .models import Municipio,Provincia
from django.views.generic import CreateView,DeleteView,ListView,UpdateView
from django.urls import reverse_lazy
from django.http import HttpResponseRedirect

class UserCreate(CreateView):
    form_class=JugadorUserRegisterForm
    template_name='registrar_usuario.html'

    def form_valid(self,form):
        user=form['user'].save()
        provincia=form['provincia'].save(commit=False)
        try:
            provincia=Provincia.objects.get(nombrep=provincia.nombrep)
        except:
            no_provincias=len(Provincia.objects.all())
            provincia.idp=no_provincias+1
            provincia.save()
        
        municipio=form['municipio'].save(commit=False)
        try:
            municipio=Municipio.objects.get(idp=provincia.idp,nombrem=municipio.nombrem)
        except:
            no_municipios=len(Municipio.objects.all())
            municipio.idp=provincia
            municipio.idm=no_municipios+1
            municipio.save()

        jugador=form['jugador'].save(commit=False)
        jugador.idj=user.username
        jugador.idp=municipio
        jugador.idm=municipio
        jugador.save()

        return HttpResponseRedirect(reverse_lazy('index'))

