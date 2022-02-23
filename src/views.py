from django.http import JsonResponse

def HomeView(request, *args, **kwargs):
    return JsonResponse({"detail" : "Hello world"})