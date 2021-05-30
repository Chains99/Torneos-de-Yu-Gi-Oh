from .models import AdminPartidas
from aplicaciones.eventos.models import Partida
from aplicaciones.admins_torneos.forms import AdminRegisterForm
from django.views.generic import FormView
from django.urls import reverse_lazy
from django.contrib.contenttypes.models import ContentType
from django.contrib.auth.models import Permission
from django.contrib.auth.mixins import PermissionRequiredMixin

class AdminPartidasCreate(PermissionRequiredMixin,FormView):
    form_class=AdminRegisterForm
    template_name='registrar_admin_partidas.html'
    success_url=reverse_lazy('index')
    permission_required='admins_partidas.add_adminpartidas'
    permission_denied_message='Acceso denegado. Usuario no autorizado'

    def form_valid(self, form):

        user=AdminPartidas.objects.create_user(
            form.cleaned_data['username'],
            form.cleaned_data['email'],
            form.cleaned_data['password1'],
        )
        permissions=['add','view','change','delete']
        
        for perm in permissions:
            content_type=ContentType.objects.get_for_model(Partida)
            permission=Permission.objects.get(
                codename=perm+'_partida',
                content_type=content_type
            )
            user.user_permissions.add(permission)

        return super(AdminPartidasCreate, self).form_valid(form)