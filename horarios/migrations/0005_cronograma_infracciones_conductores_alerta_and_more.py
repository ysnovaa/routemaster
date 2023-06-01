# Generated by Django 4.1.7 on 2023-05-24 19:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('horarios', '0004_remove_conductores_edad_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='cronograma',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('hora_inicio', models.CharField(max_length=6)),
                ('hora_fin', models.CharField(max_length=6)),
            ],
        ),
        migrations.CreateModel(
            name='infracciones',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_completo', models.CharField(max_length=150)),
            ],
        ),
        migrations.AddField(
            model_name='conductores',
            name='alerta',
            field=models.CharField(max_length=150, null=True),
        ),
        migrations.AddField(
            model_name='conductores',
            name='telefono',
            field=models.CharField(max_length=12, null=True),
        ),
        migrations.CreateModel(
            name='viajes',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_hora', models.DateTimeField()),
                ('duracion', models.CharField(max_length=6)),
                ('documento', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='horarios.conductores')),
            ],
        ),
        migrations.CreateModel(
            name='vehiculos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero_interno', models.CharField(max_length=4)),
                ('tipo', models.CharField(max_length=45)),
                ('placa', models.CharField(max_length=6)),
                ('cronograma', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='horarios.cronograma')),
                ('documento', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='horarios.conductores')),
            ],
        ),
        migrations.CreateModel(
            name='rutas',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=150)),
                ('geocerca', models.CharField(max_length=150)),
                ('documento', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='horarios.conductores')),
                ('numero_interno', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='horarios.vehiculos')),
            ],
        ),
        migrations.CreateModel(
            name='alertas',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tiempo_total', models.CharField(max_length=6)),
                ('sancion', models.CharField(max_length=150)),
                ('documento', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='horarios.conductores')),
            ],
        ),
    ]