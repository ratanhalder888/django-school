from django.shortcuts import render
from django.http import JsonResponse

# Create your views here.
def my_html_view(request):
    return render(request, 'index.html')

def get_data(request):
    # Your two JSON data objects
    data = {
        "user": {
            "name": "John Doe",
            "email": "john@example.com",
            "age": 28
        },
        "products": [
            {"id": 1, "name": "Laptop", "price": 1200},
            {"id": 2, "name": "Phone", "price": 800},
            {"id": 3, "name": "Tablet", "price": 500}
        ]
    }
    return JsonResponse(data)