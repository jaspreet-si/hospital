from django.contrib import admin
from hospitalapp.models import appointment,contact,department,doctors

admin.site.register(appointment)
class appointmentadmin(admin.ModelAdmin):
	list_display= ('name', 'contactno', 'age', 'gender','date','time','department','description')
	
admin.site.register(contact)
class contactadmin(admin.ModelAdmin):
	list_display= ('name', 'email', 'phone', 'subject','message')
admin.site.register(department)
class departmentadmin(admin.ModelAdmin):
	pass
admin.site.register(doctors)
class doctorsadmin(admin.ModelAdmin):
	pass	
	
# Register your models here.
