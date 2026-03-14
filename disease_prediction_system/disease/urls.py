from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^datasets$', views.datasets, name="datasets"),
    url(r'^analysis', views.analysis, name="analysis"),
    url(r'^all', views.getDisease, name="getDisease"),
    url(r'^prediction', views.prediction, name="prediction"),
]
