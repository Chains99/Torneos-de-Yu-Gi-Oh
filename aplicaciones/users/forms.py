from django.forms import ModelForm,CharField,PasswordInput
from django.contrib.auth.forms import UserCreationForm
from betterforms.multiform import MultiModelForm
from .models import JugadorUser,Jugador,Municipio,Provincia

class UserRegisterForm(UserCreationForm):
    password1=CharField(label='Contraseña',widget=PasswordInput)
    password2=CharField(label='Contraseña',widget=PasswordInput)

    class Meta:
        model=JugadorUser
        fields=['username','email','password1','password2']
        help_texts={k:"" for k in fields}
        labels={
            'username': 'Alias',
            'email':'Correo electrónico',
            'password1':'Contraseña',
            'password2':'Confirmar contraseña'
        }

class JugadorRegisterForm(ModelForm):
    class Meta:
        model=Jugador
        fields=['nombrej','telefono','direccionj']
        labels={
            'nombrej':'Nombre y apellidos',
            'direccionj': 'Dirección'
        }

class MunicipioRegisterForm(ModelForm):
    class Meta:
        model=Municipio
        fields=['nombrem']
        labels={'nombrem':'Municipio'}

class ProvinciaRegisterForm(ModelForm):
    class Meta:
        model=Provincia
        fields=['nombrep']
        labels={'nombrep':'Provincia'}

class JugadorUserRegisterForm(MultiModelForm):
    form_classes={
        'user': UserRegisterForm,
        'jugador': JugadorRegisterForm,
        'provincia': ProvinciaRegisterForm,
        'municipio': MunicipioRegisterForm   
    }

class JugadorUserEditForm(MultiModelForm):
    form_classes={
        'jugador':JugadorRegisterForm,
        'provincia':ProvinciaRegisterForm,
        'municipio':MunicipioRegisterForm
    } 