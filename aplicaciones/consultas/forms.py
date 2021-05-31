from django import forms
from django.forms import Form
from aplicaciones.users.models import Jugador

class MoreDeckForm(Form):
    n_jugadores = forms.IntegerField(min_value=1, required=True, initial=10)

class PopularArchetypeForm(Form):
    n_arquetipos = forms.IntegerField(min_value = 1, required=True, initial = 10)

class PopularArchetypeProvinceForm(Form):
    archetype = forms.IntegerField(min_value = 0, required=True)

class PopularArchetypeMunicipalityForm(Form):
    archetype = forms.IntegerField(min_value = 0, required=True)

class TournmentChampionsForm(Form):
    id_tournment = forms.CharField(required=True, widget=forms.TextInput)

class ArchPopularTournmentForm(Form):
    id_tournment = forms.CharField(required=True, widget=forms.TextInput)

class ArchMorePresentForm(Form):
    n_arch = forms.IntegerField(min_value = 1, required=True, initial = 10)

class ArchTRForm(Form):
    idt = forms.CharField(required=True, widget=forms.TextInput)
    idr = forms.CharField(required=True, widget=forms.TextInput)

class VictoryPlayerTimeForm(Form):
    n_players = forms.IntegerField(min_value=1, required=True, initial=10)
    initial_date = forms.DateTimeField(required=True)
    final_date = forms.DateTimeField(required=True)

class ProvinceMoreChForm(Form):
    initial_date = forms.DateTimeField(required=True)
    final_date = forms.DateTimeField(required=True)

class MunicipalityMoreChForm(Form):
    initial_date = forms.DateTimeField(required=True)
    final_date = forms.DateTimeField(required=True)

class ACTForm(Form):
    initial_date = forms.DateTimeField(required=True)
    final_date = forms.DateTimeField(required=True)
