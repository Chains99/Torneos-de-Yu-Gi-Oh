from django import forms
from .models import Torneo

class TorneoForm(forms.ModelForm):
    class Meta:
        model=Torneo
        fields='__all__'
        labels={'idt':'ID (No más de 4 caracteres)',
        'nombret':'Nombre (No más de 20 caracteres)',
        'direcciont':'Dirección (No más de 25 caracteres)',
        'fecha_hora_de_iniciot': 'Fecha y hora de inicio (Formato AAAA-MM-DD HH:MM)'}