# Generated by Django 4.1.7 on 2023-06-01 03:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('horarios', '0008_alter_infracciones_minutos'),
    ]

    operations = [
        migrations.RenameField(
            model_name='infracciones',
            old_name='conductor_infractor',
            new_name='documento',
        ),
        migrations.AddField(
            model_name='infracciones',
            name='sancion',
            field=models.CharField(max_length=150, null=True),
        ),
    ]
