from django.db import models
from django import forms

class CostCenters(forms.Form):
    """
    Move this to another file
    This should be a better data structure, like a dictionary that builds on the various fields
    """

    COST_CENTER = [
        ('platform', 'Platform'),
        ('it', 'IT'),
        ('legal', 'Legal'),
        ('infrastructure', 'Infrastructure'),
    ]

    JOB_ROLE = [
        ('platform', 'Platform'),
        ('it', 'IT'),
        ('legal', 'Legal'),
        ('infrastructure', 'Infrastructure'),
    ]

    FLOOR = [
        ('platform', 'Platform'),
        ('it', 'IT'),
        ('legal', 'Legal'),
        ('infrastructure', 'Infrastructure'),
    ]

    LOCATION = [
        ('platform', 'Platform'),
        ('it', 'IT'),
        ('legal', 'Legal'),
        ('infrastructure', 'Infrastructure'),
    ]

# Create your models here.
class Google(models.Model):
    """
    Model for creating a Google user
    This model will take in the following pieces of data and should return results based
    on a dictionary for that role
    - User's first and last name
    - Org unit(cost center)
    - Role
    - Floor and location
    """
    choices = CostCenters()

    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    cost_center = models.CharField(max_length=50, choices=choices.COST_CENTER)
    job_role = models.CharField(max_length=50, choices=choices.JOB_ROLE)
    floor = models.CharField(max_length=50, choices=choices.FLOOR)
    location = models.CharField(max_length=50, choices=choices.LOCATION)
