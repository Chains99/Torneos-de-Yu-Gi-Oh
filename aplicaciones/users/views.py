from aplicaciones.eventos.models import Participante
from .forms import JugadorUserRegisterForm,JugadorUserEditForm
from django.views.generic import CreateView,FormView,ListView
from django.urls import reverse_lazy
from django.http import HttpResponseRedirect
from django.contrib.auth.models import Permission
from django.contrib.contenttypes.models import ContentType
from django.contrib.auth.mixins import PermissionRequiredMixin
from .models import *
from aplicaciones.decks.models import Deck

class UserCreate(CreateView):
    form_class=JugadorUserRegisterForm
    template_name='registrar_usuario.html'

    def form_valid(self,form):
        user=form['user'].save()
        
        provincia_nueva=False
        provincia=form['provincia'].save(commit=False)
        try:
            provincia=Provincia.objects.get(nombrep=provincia.nombrep)
        except:
            provincia_nueva=True
            provincias=Provincia.objects.all()
            if len(provincias)==0:
                provincia.idp=1
            else:
                provincia.idp=provincias.last().idp+1
            provincia.save()
        
        municipio=form['municipio'].save(commit=False)
        try:
            municipio=Municipio.objects.get(idp=provincia.idp,nombrem=municipio.nombrem)
        except:
            municipio.idp=provincia
            if provincia_nueva:
               municipio.idm=1
            else:
                municipios=Municipio.objects.filter(idp=provincia.idp)
                municipio.idm=municipios.last().idm+1
            municipio.save()
        
        jugador=form['jugador'].save(commit=False)
        jugador.idj=user.username
        jugador.municipioj=municipio
        jugador.save()

        content_type=ContentType.objects.get_for_model(Jugador)
        permission=Permission.objects.get(
            codename='change_jugador',
            content_type=content_type
            )
        user.user_permissions.add(permission)

        content_type=ContentType.objects.get_for_model(Municipio)
        permission=Permission.objects.get(
            codename='add_municipio',
            content_type=content_type
            )
        user.user_permissions.add(permission)

        content_type=ContentType.objects.get_for_model(Provincia)
        permission=Permission.objects.get(
            codename='add_provincia',
            content_type=content_type
            )
        user.user_permissions.add(permission)

        permissions=['add','view','change','delete']
        
        for perm in permissions:
            content_type=ContentType.objects.get_for_model(Deck)
            permission=Permission.objects.get(
                codename=perm+'_'+'deck',
                content_type=content_type
            )
            user.user_permissions.add(permission)

        return HttpResponseRedirect(reverse_lazy('index'))


class UserUpdate(PermissionRequiredMixin,FormView):
    model=JugadorUser
    form_class=JugadorUserEditForm
    template_name='editar_usuario.html'
    success_url=reverse_lazy('index')
    permission_required='users.change_jugador'
    permission_denied_message='Acceso denegado. Usuario no autorizado'

    def get_form_kwargs(self):
        kwargs=super(UserUpdate,self).get_form_kwargs()

        user=AuthUser.objects.get(id=self.request.user.id)
        jugador=Jugador.objects.get(idj=user.username)
        municipio=jugador.municipioj
        provincia=municipio.idp

        kwargs.update(instance={
            'jugador':jugador,
            'provincia': provincia,
            'municipio': municipio       
        })

        return kwargs

    def form_valid(self,form):
        user=AuthUser.objects.get(id=self.request.user.id)
        jugador=Jugador.objects.get(idj=user.username)

        provincia_nueva=False
        provincia=form['provincia'].save(commit=False)
        try:
            provincia=Provincia.objects.get(nombrep=provincia.nombrep)
        except:
            provincia_nueva=True
            provincias=Provincia.objects.all()
            if len(provincias)==0:
                provincia.idp=1
            else:
                provincia.idp=provincias.last().idp+1
            provincia.save()
        
        municipio=form['municipio'].save(commit=False)
        try:
            municipio=Municipio.objects.get(idp=provincia.idp,nombrem=municipio.nombrem)
        except:
            municipio.idp=provincia
            if provincia_nueva:
               municipio.idm=1
            else:
                municipios=Municipio.objects.filter(idp=provincia.idp)
                municipio.idm=municipios.last().idm+1
            municipio.save()


        jugador=form['jugador'].save(commit=False)
        jugador.idj=user.username
        jugador.municipioj=municipio
        jugador.save()
        
        return HttpResponseRedirect(reverse_lazy('index'))


class TorneoUserList(ListView):
    model=Participante
    template_name='torneos_inscrito.html'

    def get_context_data(self):
        user=self.request.user.id
        jugador=AuthUser.objects.get(id=user)
        participaciones=Participante.objects.filter(idj=jugador.username)
        return {'participaciones':participaciones}
