# Generated by Django 4.1.7 on 2023-03-16 08:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('horarios', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='conductores',
            name='bus_asignado',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='conductores',
            name='edad',
            field=models.IntegerField(),
        ),
    ]
