from aplicaciones.eventos.forms import LugarAlcanzadoForm
from aplicaciones.torneos.models import Torneo
from django.shortcuts import render,redirect
from django import forms
from aplicaciones.decks.models import Deck
from aplicaciones.users.models import AuthUser, Jugador
from .models import Participa, Participante,Partida
from .forms import ParticipaRegisterForm,EditarParticipacionForm,PartidaRegistgerForm

def crearParticipante(request,pk):
    user=AuthUser.objects.get(id=request.user.id)
    decks=Deck.objects.filter(idj=user.username)

    if len(decks)==0:
        return redirect('crear_deck')

    deck_choices=[]
    for deck in decks:
        deck_choices.append((deck.idd,deck.nombred))

    class DeckSelectForm(forms.Form):
        deck_seleccionado=forms.IntegerField(label='Seleccione un deck',widget=forms.RadioSelect(choices=deck_choices))
        
    if request.method=='GET':
        form=DeckSelectForm()
        contexto={
            'form':form
        }
    else:
        form=DeckSelectForm(request.POST)
        contexto={
            'form':form
        }
        participante=Participante()
        participante.idt=Torneo.objects.get(idt=pk)
        participante.idj=Jugador.objects.get(idj=user.username)
        if form.is_valid():
            participante.idd=Deck.objects.get(idd=form.cleaned_data.get("deck_seleccionado"))
            participante.save()
            return redirect('torneos')

    return render(request,'inscripcion.html',contexto)

def listar(request,pk):
    torneo=Torneo.objects.get(idt=pk)
    participantes=Participante.objects.filter(idt=pk)
    jugadores_en_torneo=Participa.objects.filter(idt=pk)
    rondas=jugadores_en_torneo.values('idr').distinct()

    claves_participantes=[]

    for participante in participantes:
        claves_participantes.append(pk+'_'+participante.idj.idj)

    claves_rondas=[]

    for ronda in rondas:
        claves_rondas.append(pk+'_'+ronda['idr'])

    contexto={
        'torneo':torneo,
        'participantes_claves':zip(participantes,claves_participantes),
        'rondas_claves':zip(rondas,claves_rondas)
    }

    return render(request,'torneo_eventos.html',contexto)

def editarLugarAlcanzado(request,pk):
    idt,idj=pk.split('_')
    participante=Participante.objects.get(idt=idt,idj=idj)
    if request.method=='GET':
        form=LugarAlcanzadoForm(instance=participante)
        contexto={
            'form':form,
            'participante':participante
        }
    else:
        form=LugarAlcanzadoForm(request.POST,instance=participante)
        contexto={
            'form':form
        }
        if form.is_valid():
            form.save()
            return redirect('torneo',pk=idt)
    return render(request,'lugar_alcanzado.html',contexto)

def crearParticipcion(request,pk):  
    if request.method=='GET':
        form=ParticipaRegisterForm()
        contexto={
            'form':form
        }
    else:
        form=ParticipaRegisterForm(request.POST)
        contexto={
            'form':form
        }
        participacion=Participa()
        if form.is_valid():
            participacion.participante=Participante.objects.get(idt=pk,idj=form.cleaned_data.get("idj"))
            participacion.idr=form.cleaned_data.get("idr")
            participacion.save()
            return redirect('torneo',pk=pk)
    return render(request,'crear_participacion.html',contexto)

def rondaInfo(request,pk):
    idt,idr=pk.split('_')
    torneo=Torneo.objects.get(idt=idt)
    participantes_ronda=Participa.objects.filter(idt=idt,idr=idr)
    partidas=Partida.objects.filter(idt=idt,idr=idr)

    claves_participantes=[]

    for participante in participantes_ronda:
        claves_participantes.append(idt+'_'+idr+'_'+participante.idj)

    claves_partidas=[]

    for partida in partidas:
        claves_partidas.append(idt+'_'+idr+'_'+str(partida.idp))

    contexto={
        'torneo_ronda':pk,
        'torneo':torneo,
        'idr':idr,
        'participantes_claves': zip(participantes_ronda,claves_participantes),
        'partidas_claves':zip(partidas,claves_partidas)
    }

    return render(request,'ronda_eventos.html',contexto)

def editarParticipacion(request,pk):
    idt,idr,idj=pk.split('_')
    participacion=Participa.objects.get(idt=idt,idr=idr,idj=idj)
    if request.method=='GET':
        form=EditarParticipacionForm(instance=participacion)
        contexto={
            'form':form,
            'participacion':participacion
        }
    else:
        form=EditarParticipacionForm(request.POST,instance=participacion)
        contexto={
            'form':form
        }
        if form.is_valid():
            form.save()
            return redirect('ronda',pk=idt+'_'+idr)
    return render(request,'triunfa.html',contexto)

def eliminarParticipacion(request,pk):
    idt,idr,idj=pk.split('_')
    participacion=Participa.objects.get(idt=idt,idr=idr,idj=idj)
    participacion.my_delete(idt,idr,idj)
    return redirect('ronda',pk=idt+'_'+idr)

def crearPartida(request,pk):
    idt,idr=pk.split('_')
    if request.method=='GET':
        form=PartidaRegistgerForm()
        contexto={
            'form':form
        }
    else:
        form=PartidaRegistgerForm(request.POST)
        contexto={
            'form':form
        }
        partida=Partida()
        if form.is_valid():
            partida.idt=idt
            partida.idr=idr
            partida.idj1=form.cleaned_data.get("idj1")
            partida.idj2=form.cleaned_data.get("idj2")
            partida.resultado=form.cleaned_data.get("resultado")
            partida.fecha_hora_de_iniciop=form.cleaned_data.get("fecha_hora_de_iniciop")
            partida.fecha_hora_de_finalizacionp=form.cleaned_data.get("fecha_hora_de_finalizacionp")
            partidas_ronda=Partida.objects.filter(idt=idt,idr=idr)
            if len(partidas_ronda)==0:
                partida.idp=1
            else:
                partida.idp=partidas_ronda.last().idp+1
            partida.save()
            return redirect('ronda',pk=pk)
    return render(request,'crear_partida.html',contexto)

def editarPartida(request,pk):
    idt,idr,idp=pk.split('_')
    partida=Partida.objects.get(idt=idt,idr=idr,idp=idp)
    if request.method=='GET':
        form=PartidaRegistgerForm(instance=partida)
        contexto={
            'form':form
        }
    else:
        form=PartidaRegistgerForm(request.POST,instance=partida)
        contexto={
            'form':form
        }
        if form.is_valid():
            form.save()
            return redirect('ronda',pk=idt+'_'+idr)
    return render(request,'crear_partida.html',contexto)

def eliminarPartida(request,pk):
    idt,idr,idp=pk.split('_')
    partida=Partida.objects.get(idt=idt,idr=idr,idp=idp)
    partida.my_delete(idt,idr,idp)
    return redirect('ronda',pk=idt+'_'+idr)