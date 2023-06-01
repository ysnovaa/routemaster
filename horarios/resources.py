from import_export import resources  
from .models import conductores  

class conductoresResource(resources.ModelResource):  
    class Meta:  
        model = conductores