# Generated by Django 2.0 on 2020-03-11 05:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospitalapp', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='appointment',
            old_name='email',
            new_name='age',
        ),
        migrations.RenameField(
            model_name='appointment',
            old_name='message',
            new_name='contactno',
        ),
        migrations.RenameField(
            model_name='appointment',
            old_name='phoneno',
            new_name='date',
        ),
        migrations.RenameField(
            model_name='appointment',
            old_name='subject',
            new_name='department',
        ),
        migrations.AddField(
            model_name='appointment',
            name='description',
            field=models.CharField(default='', max_length=200),
        ),
        migrations.AddField(
            model_name='appointment',
            name='gender',
            field=models.CharField(default='', max_length=200),
        ),
        migrations.AddField(
            model_name='appointment',
            name='time',
            field=models.CharField(default='', max_length=200),
        ),
    ]