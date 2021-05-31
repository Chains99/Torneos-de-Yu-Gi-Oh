# Torneos-de-Yu-Gi-Oh
Proyecto de Base de Datos

# Requerimientos

Los requerimientos de Python están especificados en el archivo `requeriments.txt`:

* Django 3.2.3
* django-betterforms 1.2
* mysqlclient 2.0.3
* six 1.16.0
* MySQL Server 8.0.24
* django-composite-foreignkey 1.1.0
* django-compositepk-model 1.0.2
  
## NOTA

Al descargar `django-betterforms` debe modificar el archivo `multiform.py`:

* La línea 15 que tiene el siguiente contenido `from django.utils.encoding import python_2_unicode_compatible`, debe ser sustituida por `from six import python_2_unicode_compatible`.
* La línea 17 que tiene el siguiente contenido `from django.utils.six.moves import reduce`, debe ser sustituida por `from six.movies import reduce`