from django.forms import ModelForm
from .models import conductores

class ConductorForm(ModelForm):
    class Meta:
        model = conductores
        fields = ['documento', 'nombre_completo', 'edad', 'tipo_licencia', 'bus_asignado']