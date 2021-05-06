# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Arquetipo(models.Model):
    ida = models.IntegerField(db_column='IDA', primary_key=True)  # Field name made lowercase.
    nombrea = models.CharField(db_column='NombreA', max_length=25)  # Field name made lowercase.
    tier = models.CharField(db_column='Tier', max_length=3, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'arquetipo'


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


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


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Deck(models.Model):
    idd = models.CharField(db_column='IDD', primary_key=True, max_length=4)  # Field name made lowercase.
    nombred = models.CharField(db_column='NombreD', max_length=20)  # Field name made lowercase.
    cantidad_cartas_mazo = models.IntegerField(db_column='Cantidad_Cartas_Mazo')  # Field name made lowercase.
    cantidad_cartas_mazo_alternativo = models.IntegerField(db_column='Cantidad_Cartas_Mazo_Alternativo')  # Field name made lowercase.
    cantidad_cartas_mazo_extra = models.IntegerField(db_column='Cantidad_Cartas_Mazo_Extra')  # Field name made lowercase.
    ida_principal = models.ForeignKey(Arquetipo, models.DO_NOTHING, db_column='IDA_Principal')  # Field name made lowercase.
    ida_adicional = models.ForeignKey(Arquetipo, models.DO_NOTHING, db_column='IDA_Adicional', blank=True, null=True)  # Field name made lowercase.
    idj = models.ForeignKey('Jugador', models.DO_NOTHING, db_column='IDJ')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'deck'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Jugador(models.Model):
    idj = models.CharField(db_column='IDJ', primary_key=True, max_length=4)  # Field name made lowercase.
    nombrej = models.CharField(db_column='NombreJ', max_length=25)  # Field name made lowercase.
    telefono = models.CharField(db_column='Telefono', max_length=20, blank=True, null=True)  # Field name made lowercase.
    direccionj = models.CharField(db_column='DireccionJ', max_length=25)  # Field name made lowercase.
    idm = models.ForeignKey('Municipio', models.DO_NOTHING, db_column='IDM')  # Field name made lowercase.
    idp = models.ForeignKey('Municipio', models.DO_NOTHING, db_column='IDP')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'jugador'


class Municipio(models.Model):
    idp = models.OneToOneField('Provincia', models.DO_NOTHING, db_column='IDP', primary_key=True)  # Field name made lowercase.
    idm = models.CharField(db_column='IDM', max_length=4)  # Field name made lowercase.
    nombrem = models.CharField(db_column='NombreM', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'municipio'
        unique_together = (('idp', 'idm'),)


class Participa(models.Model):
    idt = models.OneToOneField('Participante', models.DO_NOTHING, db_column='IDT', primary_key=True)  # Field name made lowercase.
    idr = models.CharField(db_column='IDR', max_length=4)  # Field name made lowercase.
    idj = models.ForeignKey('Participante', models.DO_NOTHING, db_column='IDJ')  # Field name made lowercase.
    triunfa = models.CharField(db_column='Triunfa', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'participa'
        unique_together = (('idt', 'idr', 'idj'),)


class Participante(models.Model):
    idt = models.OneToOneField('Torneo', models.DO_NOTHING, db_column='IDT', primary_key=True)  # Field name made lowercase.
    idj = models.ForeignKey(Jugador, models.DO_NOTHING, db_column='IDJ')  # Field name made lowercase.
    idd = models.ForeignKey(Deck, models.DO_NOTHING, db_column='IDD')  # Field name made lowercase.
    lugar_alcanzado = models.CharField(db_column='Lugar_Alcanzado', max_length=25, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'participante'
        unique_together = (('idt', 'idj'),)


class Partida(models.Model):
    idt = models.OneToOneField(Participa, models.DO_NOTHING, db_column='IDT', primary_key=True)  # Field name made lowercase.
    idr = models.ForeignKey(Participa, models.DO_NOTHING, db_column='IDR')  # Field name made lowercase.
    idp = models.CharField(db_column='IDP', max_length=4)  # Field name made lowercase.
    idj1 = models.ForeignKey(Participa, models.DO_NOTHING, db_column='IDJ1')  # Field name made lowercase.
    idj2 = models.ForeignKey(Participa, models.DO_NOTHING, db_column='IDJ2')  # Field name made lowercase.
    resultado = models.CharField(db_column='Resultado', max_length=3, blank=True, null=True)  # Field name made lowercase.
    fecha_hora_de_iniciop = models.DateTimeField(db_column='Fecha_Hora_de_InicioP', blank=True, null=True)  # Field name made lowercase.
    fecha_hora_de_finalizacionp = models.DateTimeField(db_column='Fecha_Hora_de_FinalizacionP', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'partida'
        unique_together = (('idt', 'idr', 'idp'),)


class Provincia(models.Model):
    idp = models.CharField(db_column='IDP', primary_key=True, max_length=4)  # Field name made lowercase.
    nombrep = models.CharField(db_column='NombreP', max_length=20)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'provincia'


class Torneo(models.Model):
    idt = models.CharField(db_column='IDT', primary_key=True, max_length=4)  # Field name made lowercase.
    nombret = models.CharField(db_column='NombreT', max_length=20)  # Field name made lowercase.
    direcciont = models.CharField(db_column='DireccionT', max_length=25)  # Field name made lowercase.
    fecha_hora_de_iniciot = models.DateTimeField(db_column='Fecha_Hora_de_InicioT')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'torneo'
