from django.db import models
from cpkmodel import CPkModel
from compositefk.fields import CompositeForeignKey
from django.db.models.deletion import CASCADE
from django.db.models.fields import related
from aplicaciones.decks.models import Deck
from aplicaciones.users.models import Jugador
from aplicaciones.torneos.models import Torneo
from django.db import connection

class Participante(CPkModel):
    idt = models.OneToOneField(Torneo, models.CASCADE, db_column='IDT', primary_key=True)  # Field name made lowercase.
    idj = models.OneToOneField(Jugador, models.CASCADE, db_column='IDJ',primary_key=True)  # Field name made lowercase.
    idd = models.ForeignKey(Deck, models.CASCADE, db_column='IDD')  # Field name made lowercase.
    lugar_alcanzado = models.CharField(db_column='Lugar_Alcanzado', max_length=25, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'participante'
        unique_together = (('idt', 'idj'),)

class Participa(CPkModel):
    idt = models.CharField(db_column='IDT',max_length=10,primary_key=True)  # Field name made lowercase.
    idr = models.CharField(db_column='IDR', max_length=10,primary_key=True)  # Field name made lowercase.
    idj = models.CharField(db_column='IDJ',max_length=150,primary_key=True)  # Field name made lowercase.
    triunfa = models.CharField(db_column='Triunfa', max_length=1)  # Field name made lowercase.

    participante=CompositeForeignKey(Participante,on_delete=CASCADE,related_name='participante_ronda',to_fields={
        'idt':'idt',
        'idj':'idj'
    })

    def my_delete(self,idt,idr,idj):
        with connection.cursor() as cursor:
            cursor.execute("DELETE FROM PARTICIPA WHERE IDT=%s AND IDR=%s AND IDJ=%s",[idt,idr,idj])
       
    class Meta:
        managed = False
        db_table = 'participa'
        unique_together = (('idt', 'idr', 'idj'),)

class Partida(CPkModel):
    idt = models.CharField(max_length=10,primary_key=True)  # Field name made lowercase.
    idr = models.CharField(max_length=10,primary_key=True)  # Field name made lowercase.
    idp = models.IntegerField(db_column='IDP',primary_key=True)  # Field name made lowercase.
    idj1 = models.CharField(max_length=150)  # Field name made lowercase.
    idj2 = models.CharField(max_length=150)  # Field name made lowercase.
    resultado = models.CharField(db_column='Resultado', max_length=3, blank=True, null=True)  # Field name made lowercase.
    fecha_hora_de_iniciop = models.DateTimeField(db_column='Fecha_Hora_de_InicioP', blank=True, null=True)  # Field name made lowercase.
    fecha_hora_de_finalizacionp = models.DateTimeField(db_column='Fecha_Hora_de_FinalizacionP', blank=True, null=True)  # Field name made lowercase.

    jugador1=CompositeForeignKey(Participa,on_delete=CASCADE,related_name='participante1',to_fields={
        'idt':'idt',
        'idr':'idr',
        'idj':'idj1'
    })

    jugador2=CompositeForeignKey(Participa,on_delete=CASCADE,related_name='participante2',to_fields={
        'idt':'idt',
        'idr':'idr',
        'idj':'idj2'
    })

    def my_delete(self,idt,idr,idp):
        with connection.cursor() as cursor:
            cursor.execute("DELETE FROM PARTIDA WHERE IDT=%s AND IDR=%s AND IDP=%s",[idt,idr,idp])

    class Meta:
        managed = False
        db_table = 'partida'
        unique_together = (('idt', 'idr', 'idp'),)
