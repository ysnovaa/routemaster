# Generated by Django 4.1.7 on 2023-06-01 06:13

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('horarios', '0011_rename_numero_interno_rutas_bus_asignado_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='rutas',
            old_name='bus_asignado',
            new_name='numero_interno',
        ),
        migrations.RenameField(
            model_name='vehiculos',
            old_name='bus_asignado',
            new_name='numero_interno',
        ),
    ]
