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
    def __init__(self,*args, **kwargs):
        super(self.__class__,self).__init__(*args, **kwargs)
        self.fields['nombrea'].required=False
    class Meta:
        model=Arquetipo
        fields=['nombrea']
        labels={'nombrea':'Arquetipo adicional (opcional)'}

class DeckCreateForm(MultiModelForm):
    form_classes={
        'deck': DeckForm,
        'arquetipo_principal':ArquetipoPrincipalForm,
        'arquetipo_adicional':ArquetipoAdicionalForm
    } 

def get_choices():
    choices = [("Todos", "Todos")]
    for ch in list(Arquetipo.objects.all().values_list("tier").distinct()):
        ch = ch[0]
        choices.append((ch, ch))
    return choices

class FilterByTierForm(forms.Form):
    tierSelect = forms.ChoiceField(choices=get_choices())


