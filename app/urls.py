from django.urls import path
from . import views

urlpatterns = [
    path('page/', views.my_html_view),
    path('api/data/', views.get_data, name='get_data'),
]