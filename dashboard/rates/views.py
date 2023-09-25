from django.views.generic import TemplateView
from django.http import JsonResponse, request

from .models import Rate

# Create your views here.
class HomeView(TemplateView):
    template_name = "_base_vue.html"

# Get Euribor3M rates in json format
def Euribor3M(_request):
    # get data from database
    #data = Rate.objects.all().order_by('rate_date')
    #data = data.filter(rate_type='Euribor 3M').values()
    data = Rate.objects.filter(rate_type='Euribor 3M').order_by('rate_date').values()
    return JsonResponse({"data": list(data.values())}, safe=False)

# Get Euribor3M rates in json format
def Euribor6M(request):
    data = Rate.objects.filter(rate_type='Euribor 6M').order_by('rate_date').values()
    return JsonResponse({"data": list(data)}, safe=False)

# Get Euribor12M rates in json format
def Euribor12M(request):
    data = Rate.objects.filter(rate_type='Euribor 12M').order_by('rate_date').values()
    return JsonResponse({"data": list(data)}, safe=False)

#####################################
# Widgets
#####################################
# Get the current value of Euribor3M
def CurrentEuribor3M(request):
    data = Rate.objects.filter(rate_type='Euribor 3M').order_by('-rate_date').values()[:6]
    return JsonResponse({"data": list(data)}, safe=False)

# Get the current value for Euribor6M
def CurrentEuribor6M(request):
    data = Rate.objects.filter(rate_type='Euribor 6M').order_by('-rate_date').values()[:6]
    return JsonResponse({"data": list(data)}, safe=False)

# Get the current value for Euribor12M
def CurrentEuribor12M(request):
    data = Rate.objects.filter(rate_type='Euribor 12M').order_by('-rate_date').values()[:6]
    return JsonResponse({"data": list(data)}, safe=False)
