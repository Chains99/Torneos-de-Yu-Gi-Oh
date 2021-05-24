from .models import AdminTorneos
from .forms import UserRegisterForm
from django.views.generic import FormView
from django.urls import reverse_lazy
from aplicaciones.torneos.models import Torneo
from aplicaciones.admins_partida.models import AdminPartidas
from django.contrib.auth.models import Permission
from django.contrib.contenttypes.models import ContentType
from django.contrib.auth.mixins import PermissionRequiredMixin

class AdminTorneosCreate(PermissionRequiredMixin,FormView):
    form_class=UserRegisterForm
    template_name='registrar_admin_torneos.html'
    success_url=reverse_lazy('index')
    permission_required='admins_torneos.add_admintorneos'
    permission_denied_message='Acceso denegado. Usuario no autorizado'

    def form_valid(self, form):

        user=AdminTorneos.objects.create_user(
            form.cleaned_data['username'],
            form.cleaned_data['email'],
            form.cleaned_data['password1'],
        )
        permissions=['add','view','change','delete']
        models=[Torneo,AdminTorneos,AdminPartidas]
        models_names=['torneo','adminTorneos','adminPartidas']
        
        for i in range(len(models)):
            for perm in permissions:
                content_type=ContentType.objects.get_for_model(models[i])
                permission=Permission.objects.get(
                    codename=perm+'_'+models_names[i],
                    content_type=content_type
                )
                user.user_permissions.add(permission)

        return super(AdminTorneosCreate, self).form_valid(form)
