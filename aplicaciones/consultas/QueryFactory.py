from abc import ABCMeta, abstractmethod
from aplicaciones.consultas.forms import PopularArchetypeProvinceForm
from aplicaciones.consultas.Query import *

def get_factory():
    _factory = {}
    for meta_item in QueryFactory.__subclasses__():
        item = meta_item()
        _factory[item.name] = item
    return _factory

class QueryFactory(metaclass=ABCMeta):
    def __init__(self):
        self.name = str()
    
    @abstractmethod
    def get_instance(self, data):
        pass

class MoreDeckFactory(QueryFactory):
    def __init__(self):
        self.name = "moreDeck"
    
    def get_instance(self, data):
        return MoreDeck(int(data["n_jugadores"]))
    
class PopularArchetypeFactory(QueryFactory):
    def __init__(self):
        self.name = "popularArchetype"
    
    def get_instance(self, data):
        return PopularArchetype(int(data["n_arquetipos"]))

class PopularArchetypeProvinceFactory(QueryFactory):
    def __init__(self):
        self.name = "apProvince"
    
    def get_instance(self, data):
        return ArchPopularProvince(int(data["archetype"]))

class PopularArchetypeMunicipalityFactory(QueryFactory):
    def __init__(self):
        self.name="apMunicipality"
    
    def get_instance(self, data):
        return ArchPopularMunicipality(int(data["archetype"]))

class ChampionTorunmentFactory(QueryFactory):
    def __init__(self):
        self.name = "championTournment"

    def get_instance(self, data):
        return ChampionTournment(data["id_tournment"])

class ArchPopularTournmentFactory(QueryFactory):
    def __init__(self):
        self.name = "archPopTour"

    def get_instance(self, data):
        return ArchPopularTournment(data["id_tournment"])

class ArchMorePresentFactory(QueryFactory):
    def __init__(self):
        self.name = "ampTournment"
    
    def get_instance(self, data):
        return ArchMorePresent(int(data["n_arch"]))

class ArchTRFactory(QueryFactory):
    def __init__(self):
        self.name = "atrMostCommon"
    
    def get_instance(self, data):
        return ArchTR(data["idt"], data["idr"])

class VictoryPTFactory(QueryFactory):
    def __init__(self):
        self.name = "vpt"

    def get_instance(self, data):
        return VPT(int(data["n_players"]), data["initial_date"], data["final_date"])