import json

from .views_func import *

from django.http import JsonResponse
from django.shortcuts import render


# Function to render details in JSON format
def profile(request):
    data = {
        'timestamp': get_server_date_and_time(),
        'hostname': get_server_hostname(),
        'engine': get_server_engine_info(),
        'visitor ip': get_client_ip(request)
    }
    return JsonResponse(data)