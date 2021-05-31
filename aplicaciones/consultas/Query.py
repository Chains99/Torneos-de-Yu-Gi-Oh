from aplicaciones.users.models import Jugador, Provincia, Municipio
from aplicaciones.eventos.models import Participa, Participante, Partida
from aplicaciones.decks.models import Deck, Arquetipo
from django.db.models import Count
from collections import Counter
from abc import ABCMeta, abstractmethod

class Query(metaclass=ABCMeta):
    @abstractmethod
    def execute(self,context):
        pass

class MoreDeck(Query):
    def __init__(self, n):
        self.n = n  
        self.name = "mdPlayers"  

    def execute(self, context):
        c = Counter(map(lambda x : x.idj, Deck.objects.prefetch_related('idj')))
        context[self.name] = sorted(c.items(), key=lambda x: x[1], reverse=True)[:self.n]
        context["moreDeck"] = context["moreDeck"]()
        context["moreDeck"].fields["n_jugadores"].initial = self.n
        return context

class PopularArchetype(Query):
    def __init__(self, n: int):
        self.n = n
        self.name = "paArchetype"
    
    def execute(self, context):
        fdeck = list(Deck.objects.all().values("ida_principal").annotate(count=Count("idj", distinct=True)).iterator())
        result = []
        for item in fdeck:
            arch = Arquetipo.objects.filter(ida=item["ida_principal"])[0] 
            result.append([arch.ida, arch.nombrea, arch.tier, item["count"]])
        context[self.name] = sorted(result, key=lambda x: x[3], reverse=True)[:self.n]
        context["popularArchetype"] = context["popularArchetype"]()
        context["popularArchetype"].fields["n_arquetipos"].initial = self.n
        return context

class ArchPopularProvince(Query):
    def __init__(self, id_archetype: int):
        self.id = id_archetype
        self.name = "appProvince"
    
    def execute(self, context):
        result = []

        jugadores = list(set(Deck.objects.filter(ida_principal = self.id).prefetch_related("idj").values_list("idj").iterator()))
        prov = [Provincia.objects.filter(idp = Jugador.objects.filter(idj = jug[0])[0].idp)[0] for jug in jugadores]
        if len(prov):
            counter = sorted(Counter(prov).items(), key=lambda x: x[1], reverse=True)
            _max = max(map(lambda x: x[1], counter))
            for c in counter:
                if c[1] == _max:
                    result.append(c)
                else: 
                    break
        context[self.name] = result
        return context

class ArchPopularMunicipality(Query):
    def __init__(self, id_archetype: int):
        self.id = id_archetype
        self.name = "apmMunicipality"
    
    def execute(self, context):
        result = []

        jugadores = list(set(Deck.objects.filter(ida_principal = self.id).prefetch_related("idj").values_list("idj").iterator()))
        prov = [Municipio.objects.filter(idm = Jugador.objects.filter(idj = jug[0])[0].idm)[0] for jug in jugadores]
        if len(prov):
            counter = sorted(Counter(prov).items(), key=lambda x: x[1], reverse=True)
            _max = max(map(lambda x: x[1], counter))
            for c in counter:
                if c[1] == _max:
                    result.append(c)
                else: 
                    break
        context[self.name] = result
        return context

class ChampionTournment(Query):
    def __init__(self, idt):
        self.idt = idt
        self.name = "cTournment"
    
    def execute(self, context):
        participante_torneo = Participante.objects.prefetch_related("idd").filter(idt=self.idt)
        campeon = participante_torneo.filter(lugar_alcanzado="Campeon")
        result = []
        if len(campeon):
            campeon = campeon[0]
            jugador = Jugador.objects.filter(idj=campeon.idj.idj)[0]
            deck = Deck.objects.filter(idd=campeon.idd.idd)[0]
            result =  [[jugador.idj, jugador.nombrej, deck.nombred]]
        context[self.name] = result
        return context

class ArchPopularTournment(Query):
    def __init__(self, idt):
        self.idt = idt
        self.name = "apt"
    def execute(self,context):
        participantes = Participante.objects.filter(idt=self.idt)
        arq = [Deck.objects.filter(idd=_idd[0])[0].ida_principal for _idd in participantes.values_list('idd')]
        count_arq = sorted(Counter(arq).items(), key=lambda x: x[1], reverse=True)
        result = []
        if len(count_arq):
            _max = max(map(lambda x: x[1], count_arq))
            for c in count_arq:
                if c[1] == _max:
                    result.append(c)
                else: 
                    break
        context[self.name] = result
        return context

class ArchMorePresent(Query):
    def __init__(self, n: int):
        self.n = n
        self.name = "ampt"

    def execute(self, context):
        arq = [Deck.objects.filter(idd=_idd[0])[0].ida_principal for _idd in Participante.objects.all().values_list('idd')]
        count_arq = sorted(Counter(arq).items(), key=lambda x: x[1], reverse=True)
        context[self.name] = count_arq [:self.n]
        return context

class ArchTR(Query):
    def __init__(self, idt, idr):
        self.idt = idt
        self.idr = idr
        self.name = "atr"

    def execute(self, context):
        participantes = list(Participa.objects.filter(idt=self.idt, idr=self.idr).values_list('idj'))
        decks = [Participante.objects.filter(idt=self.idt, idj=_idj).values_list("idd")[0][0] for _idj in participantes]
        arq = Counter([Arquetipo.objects.filter(ida=Deck.objects.filter(idd=deck).values_list("ida_principal")[0][0])[0] for deck in decks])
        count_arq = sorted(arq.items(), key=lambda x: x[1], reverse=True)
        print(count_arq)
        result = []
        if len(count_arq):
            _max = max(map(lambda x: x[1], count_arq))
            for c in count_arq:
                if c[1] == _max:
                    result.append(c)
                else: 
                    break
        context[self.name] = result
        return context

class VPT(Query):
    def __init__(self, n, initial_date, final_date):
        self.n = n
        self.initial = initial_date
        self.final = final_date
        self.name = "victoryP"

    def execute(self, context):
        plays_int = Partida.objects.filter(fecha_hora_de_iniciop__gte=self.initial, fecha_hora_de_finalizacionp__lte=self.final)
        players = set()
        for play in plays_int:
            players.add(Jugador.objects.filter(idj=play.idj1)[0])
            players.add(Jugador.objects.filter(idj=play.idj2)[0])

        counter = dict([(player, 0) for player in players])
        for play in plays_int:
            idwinner = self.get_winner(play)
            counter[Jugador.objects.filter(idj=idwinner)[0]] += 1
        
        skip_no_victories = list(filter(lambda x: False if x[1] == 0  else True, counter.items()))
        result = sorted(skip_no_victories, key=lambda x: x[1],reverse=True)
        context[self.name] = result[:self.n]
        context["vpt"] = context["vpt"]()
        context["vpt"].fields["n_players"].initial = self.n
        context["vpt"].fields["initial_date"].initial = self.initial
        context["vpt"].fields["final_date"].initial = self.final
        return context
    
    def get_winner(self, play):
        r1, r2 = map(lambda x: int(x), play.resultado.split("-"))
        return play.idj1 if r1 == 2 else play.idj2
