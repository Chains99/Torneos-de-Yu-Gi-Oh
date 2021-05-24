from django.db import models
from django.contrib.auth.models import User

class JugadorUser(User):
    pass

class Jugador(models.Model):
    idj = models.CharField(db_column='IDJ', primary_key=True, max_length=100)  # Field name made lowercase.
    nombrej = models.CharField(db_column='NombreJ', max_length=100)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=20, blank=True, null=True)  # Field name made lowercase.
    direccionj = models.CharField(db_column='DireccionJ', max_length=100)  # Field name made lowercase.
    idm = models.ForeignKey('Municipio', models.DO_NOTHING, db_column='IDM',related_name='idm_jugador')  # Field name made lowercase.
    idp = models.ForeignKey('Municipio', models.DO_NOTHING, db_column='IDP',related_name='idp_provincia')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'jugador'


class Provincia(models.Model):
    idp = models.IntegerField(db_column='IDP', primary_key=True)  # Field name made lowercase.
    nombrep = models.CharField(db_column='NombreP', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'provincia'

class Municipio(models.Model):
    idp = models.OneToOneField('Provincia', models.DO_NOTHING, db_column='IDP')  # Field name made lowercase.
    idm = models.IntegerField(db_column='IDM',primary_key=True)  # Field name made lowercase.
    nombrem = models.CharField(db_column='NombreM', max_length=100)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'municipio'
        unique_together = (('idp', 'idm'),)