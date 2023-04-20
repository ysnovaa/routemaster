from django.shortcuts import render, redirect
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.db import IntegrityError
from .forms import ConductorForm


# Create your views here.
def home(request):
    return render(request, 'home.html')


def signup(request):
    if request.method == 'GET':
        return render(request, 'signup.html', {
            'form': UserCreationForm
        })
    else:
        if request.POST['password1'] == request.POST['password2']:
            try:
                user = User.objects.create_user(username=request.POST['username'],
                                                password=request.POST['password1'])
                user.save()
                login(request, user)
                return redirect('horarios')
            except IntegrityError:
                return render(request, 'signup.html', {
                    'form': UserCreationForm,
                    'error': 'El usuario ya existe!'
                })
        return render(request, 'signup.html', {
            'form': UserCreationForm,
            'error': 'Las contraseñas no coinciden!'
        })


def horarios(request):
    return render(request, 'horarios.html')

def crear_conductor(request):
    if request.method == 'GET':
        return render(request, 'crear_conductor.html', {
        	'form': ConductorForm
		})
    else: 
        form = ConductorForm(request.POST)
        nuevo_conductor = form.save(commit=False)
        nuevo_conductor.user = request.user
        print(nuevo_conductor)
        #nuevo_conductor.save()
        return redirect('horarios')

def ver_ruta(request):
    return render(request,'ver_ruta.html')
    


def signout(request):
    logout(request)
    return redirect('home')


def sigin(request):
    if request.method == 'GET':
        return render(request, 'sigin.html', {
            'form': AuthenticationForm
        })
    else:
        user = authenticate(
            request, username=request.POST['username'], password=request.POST['password'])
        if user is None:
            return render(request, 'sigin.html', {
                'form': AuthenticationForm,
                'error': 'El usuario o la contraseña es incorrecto'
            })
        else:
            login(request, user)
            return redirect('horarios')
        
def sonar(request):
    return render(request,'sonar.html')

	
