from django import forms
from hospitalapp.models import appointment,contact
class appointmentform(forms.ModelForm):
	name=forms.CharField(max_length=200)
	contactno=forms.CharField(max_length=200)
	age=forms.CharField(max_length=200)
	gender=forms.CharField(max_length=200)
	date=forms.CharField(max_length=200)
	time=forms.CharField(max_length=200)
	department=forms.CharField(max_length=200)
	description=forms.CharField(max_length=200)

	class Meta:   
		model=appointment
		fields="__all__"
		
class contactform(forms.ModelForm):
	name=forms.CharField(max_length=200)
	email=forms.CharField(max_length=200)
	phone=forms.CharField(max_length=200)
	subject=forms.CharField(max_length=200)
	message=forms.CharField(max_length=200)
	
	class Meta:
		model=contact
		fields="__all__"