# Generated by Django 4.1.7 on 2023-06-01 07:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('horarios', '0015_alter_conductores_nombre_completo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='conductores',
            name='bus_asignado',
            field=models.CharField(max_length=4, null=True),
        ),
        migrations.AlterField(
            model_name='conductores',
            name='tipo_licencia',
            field=models.CharField(max_length=10, null=True),
        ),
    ]
