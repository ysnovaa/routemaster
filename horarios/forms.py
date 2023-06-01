from django.forms import ModelForm
from .models import conductores, ReporteProgramacion

class ConductorForm(ModelForm):
    class Meta:
        model = conductores
        fields = ['documento', 'nombre_completo', 'fechaNacimiento', 'tipo_licencia', 'bus_asignado', 'telefono', 'alerta']

class ReporteForm(ModelForm):
    class Meta:
        model = ReporteProgramacion
        fields = ['vehiculo', 'ruta', 'hora_inicio', 'hora_fin']