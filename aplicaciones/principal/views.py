from django.shortcuts import render
from aplicaciones.torneos.models import Torneo
from django.utils import timezone
from django.views.generic import ListView

def inicio_principal(request):
    return render(request,'index.html')

def creditos(request):
    return render(request, 'creditos.html')
    
class Index(ListView):
    model=Torneo
    template_name='index.html'

    def get_context_data(self):
        torneos=Torneo.objects.all()
        torneos_no_iniciados=[]
        f_h=timezone.now()
        for torneo in torneos:
            if torneo.fecha_hora_de_iniciot > f_h:
                torneos_no_iniciados.append(torneo)
        return {'torneos_no_iniciados':torneos_no_iniciados}