from django.shortcuts import render,redirect
from hospitalapp.models import appointment,contact,department,doctors
from hospitalapp.forms import appointmentform,contactform
from django.views.generic import TemplateView, ListView
from django.contrib.messages import constants as messages
# Create your views here.
class homeview(TemplateView):
	template_name="home.html"
class appointmentview(TemplateView):
	template_name="appointment.html"	
class departmentview(ListView):
	template_name="department.html"

	def get_queryset(self):
		return department.objects.all()



	
class aboutusview(TemplateView):
	template_name="aboutus.html"
class contactview(TemplateView):
	template_name="contact.html"	
class servicesview(TemplateView):
	template_name="services.html"	
class faciltiesview(TemplateView):
	template_name="facilties.html"	
class doctorsview(ListView):
	template_name="doctors.html"
	def get_queryset(self):
		return doctors.objects.select_related('department')

	
def insert_data(request):
	if request.method=='POST':
		form=appointmentform(request.POST)
		if form.is_valid():
			try:
				form.save()
				messages.success(request, "Profile details updated.")
				return redirect('/appointment/')
			except:
				pass
	else:
		form=appointmentform()
	return render(request,'appointment.html',{'form':form})	

def insert1_data(request):
	if request.method=='POST':
		form=contactform(request.POST)
		if form.is_valid():
			try:
				form.save()
				messages.success(request, "Profile details updated.")
				return redirect('/contact/')
			except:
				pass
	else:
		form=contactform()
	return render(request,'contact.html',{'form':form})		
