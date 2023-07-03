from django.urls import path

from .views import HomeView, Euribor3M, Euribor6M, CurrentEuribor3M, CurrentEuribor6M, CurrentEuribor12M

app_name = 'rates'
urlpatterns = [
    path('', HomeView.as_view(), name='homepage'),
    path('euribor3M', Euribor3M, name='euribor3m'), 
    path('euribor6M', Euribor6M, name='euribor6m'),
    path('euribor3M/current', CurrentEuribor3M, name='current_euribor3m'),
    path('euribor6M/current', CurrentEuribor6M, name='current_euribor6m'),
    path('euribor12M/current', CurrentEuribor12M, name='current_euribor12m'),
]
