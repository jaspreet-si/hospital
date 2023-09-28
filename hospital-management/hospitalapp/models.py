from django.db import models
class appointment(models.Model):
	name=models.CharField(max_length=200)
	contactno=models.CharField(max_length=200)
	age=models.CharField(max_length=200)
	gender=models.CharField(max_length=200,default="")
	date=models.CharField(max_length=200)
	time=models.CharField(max_length=200,default="")
	department=models.CharField(max_length=200)
	description=models.CharField(max_length=200, default="")
	class Meta:
		db_table="appointment"
	def __str__(self):
		return self.name

# Create your models here.
class contact(models.Model):
	name=models.CharField(max_length=200)
	email=models.CharField(max_length=200)
	phone=models.CharField(max_length=200)
	subject=models.CharField(max_length=200,)
	message=models.CharField(max_length=200,default="")
	                                                          
	class Meta:
		db_table="contact"
	def __str__(self):
		return self.name
		
class department(models.Model):
	name=models.CharField(max_length=200)
	description=models.CharField(max_length=200)
	photo=models.ImageField(upload_to = 'image/')

	class Meta:   
		db_table="department"
	def __str__(self):
		return self.name
class doctors(models.Model):
	name=models.CharField(max_length=200)
	qualification=models.CharField(max_length=200)
	photo=models.ImageField(upload_to = 'image/')
	department=models.ForeignKey(department,on_delete=models.CASCADE)
	description=models.CharField(max_length=200)

	class Meta:
		db_table="doctors"
	def __str__(self):
		return self.name 
	
	