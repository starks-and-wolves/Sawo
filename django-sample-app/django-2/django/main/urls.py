from django.urls import path
from . import views

app_name = "main"

urlpatterns = [
    path('',views.home, name="home"),
    path('index.html/',views.index, name="index"),
    path('recive/',views.recive, name="recive")
]