from django.shortcuts import render
from django.http import HttpResponse

import json, urllib

def index(request):
    ##return HttpResponse("Hello, world.")

    # load and display data
    
    with urllib.request.urlopen("https://shiftstestapi.firebaseio.com/locations.json") as url:
        data = json.loads(url.read().decode())

        return HttpResponse(data["city"])