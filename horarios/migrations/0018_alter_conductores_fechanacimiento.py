# Generated by Django 4.1.7 on 2023-06-01 08:00

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('horarios', '0017_alter_conductores_usuario'),
    ]

    operations = [
        migrations.AlterField(
            model_name='conductores',
            name='fechaNacimiento',
            field=models.CharField(max_length=10, null=True),
        ),
    ]