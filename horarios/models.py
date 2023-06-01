from django.db import models
from django.contrib.auth.models import User


class conductores(models.Model):
    documento = models.CharField(max_length=12, null=True)
    nombre_completo = models.CharField(max_length=150, null=True)
    tipo_licencia = models.CharField(max_length=10, null=True)
    fechaNacimiento = models.CharField(max_length=10, null=True)
    telefono = models.CharField(max_length=12, null=True)
    bus_asignado = models.CharField(max_length=4, null=True)
    alerta = models.CharField(max_length=150, null=True)
    usuario = models.ForeignKey(User, null=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre_completo


class alertas(models.Model):
    documento = models.ForeignKey(
        conductores, null=True, blank=True, on_delete=models.CASCADE)
    tiempo_total = models.CharField(max_length=6)
    sancion = models.CharField(max_length=150)

    def __str__(self):
        return self.sancion


class cronograma(models.Model):
    hora_inicio = models.CharField(max_length=6)
    hora_fin = models.CharField(max_length=6)


class viajes(models.Model):
    fecha_hora = models.DateTimeField()
    duracion = models.CharField(max_length=6)
    documento = models.ForeignKey(
        conductores, null=True, blank=True, on_delete=models.CASCADE)


class vehiculos(models.Model):
    numero_interno = models.CharField(max_length=4, null=True)
    tipo = models.CharField(max_length=45, null=True)
    placa = models.CharField(max_length=6, null=True)
    documento = models.ForeignKey(
        conductores, null=True, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.numero_interno


class rutas(models.Model):
    nombre = models.CharField(max_length=150)
    geocerca = models.CharField(max_length=150)
    documento = models.ForeignKey(
        conductores, null=True, blank=True, on_delete=models.CASCADE)
    numero_interno = models.ForeignKey(
        vehiculos, null=True, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre


class geocercas(models.Model):
    posicion = models.CharField(max_length=150)
    siguiente_geocerca = models.CharField(max_length=150)
    anterior_geocerca = models.CharField(max_length=150)
    tiempo_v = models.CharField(max_length=150)


class infracciones(models.Model):
    documento = models.ForeignKey(
        conductores, null=True, blank=True, on_delete=models.CASCADE)
    control = models.ForeignKey(
        rutas, null=True, blank=True, on_delete=models.CASCADE)
    minutos = models.IntegerField(null=True)
    sancion = models.CharField(max_length=150, null=True)



class ReporteProgramacion(models.Model):
    vehiculo = models.ForeignKey(vehiculos, on_delete=models.CASCADE)
    ruta = models.ForeignKey(rutas, on_delete=models.CASCADE)
    hora_inicio = models.CharField(max_length=6)
    hora_fin = models.CharField(max_length=6)

    def __str__(self):
        return f"vehiculo: {self.vehiculo}, ruta: {self.ruta}"

    def generar_reporte_programacion():
        reporte_programacion = []
        rutas_2 = rutas.objects.all()
        for ruta in rutas_2:
            vehiculos_ruta = vehiculos.objects.filter(
                #numero_interno__documento__bus_asignado=ruta.numero_interno)
                numero_interno=ruta.numero_interno)
            for vehiculo in vehiculos_ruta:
                cronograma_vehiculo = cronograma.objects.filter(
                    vehiculo=vehiculo)
                for cron in cronograma_vehiculo:
                    reporte = ReporteProgramacion(
                        vehiculo=vehiculo,
                        ruta=ruta,
                        hora_inicio=cron.hora_inicio,
                        hora_fin=cron.hora_fin
                    )
                    reporte_programacion.append(reporte)
        return reporte_programacion

class reporteGeneral(models.Model):
    documento = models.CharField(max_length=12, null=True)
    nombre_completo = models.CharField(max_length=150, null=True)
    bus_asignado = models.CharField(max_length=4, null=True)
    tipo_bus_asignado = models.CharField(max_length=4, null=True)
    placa_bus_asignado = models.CharField(max_length=6, null=True)
    ruta_asignada = models.CharField(max_length=10, null=True)
    viajes_programados = models.CharField(max_length=4, null=True)
    tabla_asignada = models.CharField(max_length=4, null=True)