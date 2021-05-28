from django import forms
from .models import *
from betterforms.multiform import MultiModelForm

class DeckForm(forms.ModelForm):
    class Meta:
        model=Deck
        fields=['nombred','cantidad_cartas_mazo','cantidad_cartas_mazo_alternativo',
        'cantidad_cartas_mazo_extra']
        labels={'nombred':'Nombre del Deck'}

class ArquetipoPrincipalForm(forms.ModelForm):
    class Meta:
        model=Arquetipo
        fields=['nombrea']
        labels={'nombrea':'Arquetipo principal'}

class ArquetipoAdicionalForm(forms.ModelForm):
    class Meta:
        model=Arquetipo
        fields=['nombrea']
        labels={'nombrea':'Arquetipo adicional'}

class DeckCreateForm(MultiModelForm):
    form_classes={
        'deck': DeckForm,
        'arquetipo_principal':ArquetipoPrincipalForm,
        'arquetipo_adicional':ArquetipoAdicionalForm
    } 
