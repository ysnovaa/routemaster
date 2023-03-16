from django.db import models
from django.contrib.auth.models import User

class conductores(models.Model):
    documento = models.CharField(max_length=12)
    nombre_completo = models.CharField(max_length=150)
    edad = models.IntegerField()
    tipo_licencia = models.CharField(max_length=10)
    bus_asignado = models.IntegerField()
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre_completo + '- licencia ' + self.tipo_licencia