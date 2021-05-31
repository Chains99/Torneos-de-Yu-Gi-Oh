from django import forms
from django.forms import fields
from .models import Participante,Participa,Partida

class LugarAlcanzadoForm(forms.ModelForm):
    def __init__(self,*args, **kwargs):
        super(self.__class__,self).__init__(*args, **kwargs)
        self.fields['lugar_alcanzado'].required=False
    class Meta:
        model=Participante
        fields=['lugar_alcanzado']

class ParticipaRegisterForm(forms.Form):
    idr=fields.CharField(max_length=10,label='Identificador de ronda (No más de 10 caracteres)')
    idj=fields.CharField(max_length=150,label='Nombre de usuario')

class EditarParticipacionForm(forms.ModelForm):
    def __init__(self,*args, **kwargs):
        super(self.__class__,self).__init__(*args, **kwargs)
        self.fields['triunfa'].required=False
    class Meta:
        model=Participa
        fields=['triunfa']
        labels={'triunfa':'Triunfa (S o N)'}

class PartidaRegistgerForm(forms.ModelForm):
    def __init__(self,*args, **kwargs):
        super(self.__class__,self).__init__(*args, **kwargs)
        self.fields['resultado'].required=False
        self.fields['fecha_hora_de_iniciop'].required=False
        self.fields['fecha_hora_de_finalizacionp'].required=False
    class Meta:
        model=Partida
        fields=['idj1','idj2','resultado','fecha_hora_de_iniciop','fecha_hora_de_finalizacionp']
        labels={
            'idj1':'Nombre de usuario del jugador 1',
            'idj2':'Nombre de usuario del jugador 2',
            'fecha_hora_de_iniciop': 'Fecha y hora de inicio de la partida (Formato AAAA-MM-DD HH:MM)',
            'fecha_hora_de_finalizacionp': 'Fecha y hora de finalización de la partida (Formato AAAA-MM-DD HH:MM)'
        }