from django.contrib import admin
from .models import *

admin.site.register(conductores)
admin.site.register(rutas)
admin.site.register(vehiculos)
admin.site.register(infracciones)
admin.site.register(ReporteProgramacion)
admin.site.register(reporteGeneral)
