# Generated by Django 3.2 on 2021-05-17 06:39

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Torneo',
            fields=[
                ('idt', models.CharField(db_column='IDT', max_length=4, primary_key=True, serialize=False)),
                ('nombret', models.CharField(db_column='NombreT', max_length=20)),
                ('direcciont', models.CharField(db_column='DireccionT', max_length=25)),
                ('fecha_hora_de_iniciot', models.DateTimeField(db_column='Fecha_Hora_de_InicioT')),
            ],
            options={
                'db_table': 'torneo',
                'managed': False,
            },
        ),
    ]
