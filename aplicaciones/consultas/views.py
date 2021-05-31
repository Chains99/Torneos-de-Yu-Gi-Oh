from django.shortcuts import render
from aplicaciones.consultas.forms import *
from aplicaciones.consultas.Handler import HandlerForm

# Create your views here.

def consultas_render(request):
    cont_data = {
        'popularArchetype': PopularArchetypeForm, 
        "apProvince": PopularArchetypeProvinceForm, 
        "apMunicipality": PopularArchetypeMunicipalityForm,
        "championTournment": TournmentChampionsForm,
        "archPopTour": ArchPopularTournmentForm,
        "atrMostCommon": ArchTRForm,
        "ampTournment": ArchMorePresentForm,
        'moreDeck': MoreDeckForm, 
        "vpt": VictoryPlayerTimeForm,
        "pmCh": ProvinceMoreChForm,
        "mmCh": MunicipalityMoreChForm,
        "ACT": ACTForm
        }

    if request.method == 'POST':
        cont_data = HandlerForm().handle(request.POST, cont_data)
    return render(request, "consultas.html", context=cont_data)

