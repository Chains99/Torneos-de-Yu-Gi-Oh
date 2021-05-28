from django.views.generic import CreateView,DeleteView,ListView,UpdateView
from aplicaciones.users.models import AuthUser, Jugador
from .models import Deck,Arquetipo
from .forms import DeckCreateForm
from django.urls import reverse_lazy
from django.contrib.auth.mixins import PermissionRequiredMixin
from django.http import HttpResponseRedirect

class DeckList(PermissionRequiredMixin,ListView):
    model=Deck
    template_name='decks.html'
    permission_required='decks.view_deck'
    permission_denied_message='Acceso denegado. Usuario no autorizado'

    def get_context_data(self):
        user=self.request.user.id
        jugador=AuthUser.objects.get(id=user)
        decks=Deck.objects.filter(idj=jugador.username)
        return {'decks':decks}


class DeckCreate(PermissionRequiredMixin,CreateView):
    form_class=DeckCreateForm
    template_name='crear_deck.html'
    success_url=reverse_lazy('decks.html')
    permission_required='decks.add_deck'
    permission_denied_message='Acceso denegado. Usuario no autorizado'

    def form_valid(self,form):
        arquetipo_principal=form['arquetipo_principal'].save(commit=False)
        try:
            arquetipo_principal=Arquetipo.objects.get(nombrea=arquetipo_principal.nombrea)
        except:
            arquetipos=Arquetipo.objects.all()
            if len(arquetipos)==0:
                arquetipo_principal.ida=1
            else:
                arquetipo_principal.ida=arquetipos.last().ida+1
            arquetipo_principal.save()
        
        arquetipo_adicional=form['arquetipo_adicional'].save(commit=False)
        try:
            arquetipo_adicional=Arquetipo.objects.get(nombrea=arquetipo_adicional.nombrea)
        except:
            arquetipos=Arquetipo.objects.all()
            if len(arquetipos)==0:
                arquetipo_adicional.ida=1
            else:
                arquetipo_adicional.ida=arquetipos.last().ida+1
            arquetipo_adicional.save()

        deck=form['deck'].save(commit=False)

        decks=Deck.objects.all()
        if len(decks)==0:
            deck.idd=1
        else:
            deck.idd=decks.last().idd+1

        id=self.request.user.id
        user=AuthUser.objects.get(id=id)
        jugador=Jugador.objects.get(idj=user.username)
        deck.idj=jugador
        deck.ida_principal=arquetipo_principal
        deck.ida_adicional=arquetipo_adicional
        deck.save()

        return HttpResponseRedirect(reverse_lazy('decks'))

class DeckUpdate(PermissionRequiredMixin,UpdateView):
    model=Deck
    form_class=DeckCreateForm
    template_name='crear_deck.html'
    success_url=reverse_lazy('decks')
    permission_required='decks.change_deck'
    permission_denied_message='Acceso denegado. Usuario no autorizado'

    def get_form_kwargs(self):
        kwargs=super(DeckUpdate,self).get_form_kwargs()

        arquetipo_principal=self.object.ida_principal
        arquetipo_adicional=self.object.ida_adicional

        kwargs.update(instance={
            'deck':self.object,
            'arquetipo_principal': arquetipo_principal,
            'arquetipo_adicional': arquetipo_adicional       
        })

        return kwargs

    def form_valid(self,form):
        arquetipo_principal=form['arquetipo_principal'].save(commit=False)
        try:
            arquetipo_principal=Arquetipo.objects.get(nombrea=arquetipo_principal.nombrea)
        except:
            arquetipos=Arquetipo.objects.all()
            if len(arquetipos)==0:
                arquetipo_principal.ida=1
            else:
                arquetipo_principal.ida=arquetipos.last().ida+1
            arquetipo_principal.save()
        
        arquetipo_adicional=form['arquetipo_adicional'].save(commit=False)
        try:
            arquetipo_adicional=Arquetipo.objects.get(nombrea=arquetipo_adicional.nombrea)
        except:
            arquetipos=Arquetipo.objects.all()
            if len(arquetipos)==0:
                arquetipo_adicional.ida=1
            else:
                arquetipo_adicional.ida=arquetipos.last().ida+1
            arquetipo_adicional.save()
            
        deck=form['deck'].save(commit=False)
        deck.ida_principal=arquetipo_principal
        deck.ida_adicional=arquetipo_adicional
        deck.save()

        return HttpResponseRedirect(reverse_lazy('decks'))

class DeckDelete(PermissionRequiredMixin,DeleteView):
    model=Deck
    template_name='eliminar_deck.html'
    success_url=reverse_lazy('decks')
    permission_required='decks.delete_deck'
    permission_denied_message='Acceso denegado. Usuario no autorizado'

