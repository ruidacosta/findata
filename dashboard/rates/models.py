from django.db import models

# Create your models here.
class Rate(models.Model):
    rate_type = models.CharField(max_length=200)
    rate_date = models.DateField()
    rate_value = models.DecimalField(max_digits=9, decimal_places=6)

    def __str__(self):
        return str(self.rate_date) + ' => ' + str(self.rate_type) + ' = ' + str(self.rate_value)
