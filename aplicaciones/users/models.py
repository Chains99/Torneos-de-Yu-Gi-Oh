from django.db import models
from django.contrib.auth.models import User
from cpkmodel import CPkModel
from compositefk.fields import CompositeForeignKey
from django.db.models.deletion import CASCADE
from django.db.models.fields import related

class JugadorUser(User):
    pass

class Provincia(models.Model):
    idp = models.IntegerField(db_column='IDP', primary_key=True)  # Field name made lowercase.
    nombrep = models.CharField(db_column='NombreP', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'provincia'

class Municipio(CPkModel):
    idp = models.OneToOneField('Provincia', models.DO_NOTHING, db_column='IDP',primary_key=True)  # Field name made lowercase.
    idm = models.IntegerField(db_column='IDM',primary_key=True)  # Field name made lowercase.
    nombrem = models.CharField(db_column='NombreM', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'municipio'
        unique_together = (('idp', 'idm'),)

class Jugador(models.Model):
    idj = models.CharField(db_column='IDJ', primary_key=True, max_length=150)  # Field name made lowercase.
    nombrej = models.CharField(db_column='NombreJ', max_length=100)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=20, blank=True, null=True)  # Field name made lowercase.
    direccionj = models.CharField(db_column='DireccionJ', max_length=100)  # Field name made lowercase.
    idp=models.IntegerField()
    idm=models.IntegerField()
    municipioj=CompositeForeignKey(Municipio,on_delete=CASCADE,related_name='locations',to_fields={
        'idp':'idp',
        'idm':'idm'
    })

    class Meta:
        managed = False
        db_table = 'jugador'

class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'