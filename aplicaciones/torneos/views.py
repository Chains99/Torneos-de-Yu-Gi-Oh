from django.views.generic import CreateView,DeleteView,ListView,UpdateView
from .models import Torneo
from django.utils import timezone
from .forms import TorneoForm
from django.urls import reverse_lazy

class TorneoList(ListView):
    model=Torneo
    template_name='torneos.html'

    def get_context_data(self):
        torneos=Torneo.objects.all()
        torneos_iniciados=[]
        torneos_no_iniciados=[]
        f_h=timezone.now()
        for torneo in torneos:
            if torneo.fecha_hora_de_iniciot>f_h:
                torneos_no_iniciados.append(torneo)
            else:
                torneos_iniciados.append(torneo)
        return {'torneos_no_iniciados':torneos_no_iniciados,'torneos_iniciados':torneos_iniciados}

class TorneoCreate(CreateView):
    model=Torneo
    form_class=TorneoForm
    template_name='crear_torneo.html'
    success_url=reverse_lazy('torneos')

class TorneoUpdate(UpdateView):
    model=Torneo
    form_class=TorneoForm
    template_name='crear_torneo.html'
    success_url=reverse_lazy('torneos')

class TorneoDelete(DeleteView):
    model=Torneo
    template_name='eliminar_torneo.html'
    success_url=reverse_lazy('torneos')
