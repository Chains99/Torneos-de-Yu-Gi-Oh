from django.db import models
from aplicaciones.users.models import Jugador

class Arquetipo(models.Model):
    ida = models.IntegerField(db_column='IDA', primary_key=True)  # Field name made lowercase.
    nombrea = models.CharField(db_column='NombreA', max_length=100)  # Field name made lowercase.
    tier = models.CharField(db_column='Tier', max_length=3, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'arquetipo'

class Deck(models.Model):
    idd = models.IntegerField(db_column='IDD', primary_key=True)  # Field name made lowercase.
    nombred = models.CharField(db_column='NombreD', max_length=100)  # Field name made lowercase.
    cantidad_cartas_mazo = models.IntegerField(db_column='Cantidad_Cartas_Mazo')  # Field name made lowercase.
    cantidad_cartas_mazo_alternativo = models.IntegerField(db_column='Cantidad_Cartas_Mazo_Alternativo')  # Field name made lowercase.
    cantidad_cartas_mazo_extra = models.IntegerField(db_column='Cantidad_Cartas_Mazo_Extra')  # Field name made lowercase.
    ida_principal = models.ForeignKey(Arquetipo, models.DO_NOTHING, db_column='IDA_Principal',related_name='ida_principal')  # Field name made lowercase.
    ida_adicional = models.ForeignKey(Arquetipo, models.DO_NOTHING, db_column='IDA_Adicional', blank=True, null=True,related_name='ida_adicional')  # Field name made lowercase.
    idj = models.ForeignKey(Jugador, models.DO_NOTHING, db_column='IDJ')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'deck'
        unique_together=(('idd','nombred'),)