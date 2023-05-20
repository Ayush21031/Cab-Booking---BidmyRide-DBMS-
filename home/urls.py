from django.contrib import admin
from django.urls import path,include
from home import views

urlpatterns = [
    # path('admin/', admin.site.urls),
    path("",views.homepage,name="home"),
    path("login/",views.index,name="login"),
    path("login/dashboard/",views.dashboard,name="dashboard"),
    path("login/dashboard/book_now/",views.book_now,name="book_now"),
    path("login/dashboard/book_now/driver_details/",views.driver_details,name="driver_details"),
    path("login/dashboard/book_now/driver_details/trip_details/",views.trip_details,name="trip_details")
]