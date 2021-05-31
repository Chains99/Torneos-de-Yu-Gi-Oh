"""torneos_de_yugioh URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from aplicaciones.principal.views import inicio_principal, Index, creditos
from aplicaciones.torneos.views import TorneoList,TorneoCreate,TorneoUpdate,TorneoDelete
from django.contrib.auth.views import LoginView,LogoutView
from aplicaciones.users.views import UserCreate,UserUpdate,TorneoUserList
from aplicaciones.admins_torneos.views import AdminTorneosCreate
from aplicaciones.decks.views import DeckList,DeckCreate,DeckUpdate,DeckDelete
from aplicaciones.consultas.views import consultas_render

urlpatterns = [
    path('admin/', admin.site.urls),
    path('',Index.as_view(),name='index'),
    path('torneos/',TorneoList.as_view(),name='torneos'),
    path('crear_torneo/',TorneoCreate.as_view(),name='crear_torneo'),
    path('editar_torneo/<str:pk>',TorneoUpdate.as_view(),name='editar_torneo'),
    path('eliminar_torneo/<str:pk>',TorneoDelete.as_view(),name='eliminar_torneo'),
    path('registrar_usuario/',UserCreate.as_view(),name='registrar_usuario'),
    path('login/',LoginView.as_view(template_name='login.html'),name='login'),
    path('logout/',LogoutView.as_view(template_name='logout.html'),name='logout'),
    path('registrar_admin_torneos/',AdminTorneosCreate.as_view(),name='registrar_admin_torneos'),
    path('mi_info/',UserUpdate.as_view(),name='editar_info'),
    path('mis_decks/', DeckList.as_view(),name='decks'),
    path('crear_deck/',DeckCreate.as_view(),name='crear_deck'),
    path('editar_deck/<int:pk>',DeckUpdate.as_view(),name='editar_deck'),
    path('eliminar_deck/<int:pk>',DeckDelete.as_view(),name='eliminar_deck'),
    path('torneos_inscrito/',TorneoUserList.as_view(),name='torneos_inscrito'),
    path('desarrolladores/',creditos,name='creditos'),
    path('consultas/',consultas_render,name="consultas")
]
