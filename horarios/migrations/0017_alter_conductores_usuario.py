# Generated by Django 4.1.7 on 2023-06-01 07:54

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('horarios', '0016_alter_conductores_bus_asignado_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='conductores',
            name='usuario',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
