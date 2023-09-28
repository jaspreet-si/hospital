from django.urls import path,include
from hospitalapp import views

urlpatterns = [
	path('',views.homeview.as_view()),
	path('appointment/',views.appointmentview.as_view()),
	path('department/',views.departmentview.as_view()),
	path('contact/',views.contactview.as_view()),
	path('aboutus/',views.aboutusview.as_view()),
	path('services/',views.servicesview.as_view()),
	path('facilities/',views.faciltiesview.as_view()),

	path('insert',views.insert_data),
	path('insert1',views.insert1_data),
	path('doctors/',views.doctorsview.as_view()),

]