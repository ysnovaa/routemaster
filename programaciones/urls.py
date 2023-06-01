"""programaciones URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from horarios import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.home, name='home'),
    path('signup/', views.signup, name='signup'),
    path('horarios/', views.horarios, name='horarios'), 
    path('horarios/crear_conductor/', views.crear_conductor, name='crear_conductor'), 
    path('horarios/ver_conductores/', views.ver_conductores, name='ver_conductores'),
    path('horarios/ver_vehiculos/', views.ver_vehiculos, name='ver_vehiculos'),
    path('horarios/ver_conductores/<int:id>/', views.ver_detalle_conductor, name='ver_detalle_conductor'),
    path('horarios/rutas/', views.ver_rutas, name='rutas'),
    path('horarios/infracciones/', views.ver_infracciones, name='infracciones'),
    path('horarios/reportes/', views.reportes, name='reportes'),
    path('horarios/crear_reporte/', views.crear_reporte, name='crear_reporte'), 
    path('logout/', views.signout, name='logout'),
    path('sigin/', views.sigin, name='sigin'),
    path('horarios/importar_conductores/', views.importar_conductores, name='importar_conductores'),
    path('horarios/importar_vehiculos/', views.importar_vehiculos, name='importar_vehiculos'),
    path('horarios/importar_reportes/', views.importar_reportes, name='importar_reportes'),
    
]
