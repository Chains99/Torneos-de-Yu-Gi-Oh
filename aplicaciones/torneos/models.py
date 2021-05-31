from django.db import models

class Torneo(models.Model):
    idt = models.CharField(db_column='IDT', primary_key=True, max_length=10)  # Field name made lowercase.
    nombret = models.CharField(db_column='NombreT', max_length=100)  # Field name made lowercase.
    direcciont = models.CharField(db_column='DireccionT', max_length=100)  # Field name made lowercase.
    fecha_hora_de_iniciot = models.DateTimeField(db_column='Fecha_Hora_de_InicioT')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'torneo'