from django.db import models


# Create your models here.
class Actor(models.Model):
    name = models.CharField(max_length=100, db_index=True)
    external_id = models.IntegerField(unique=True)


class Film(models.Model):
    name = models.CharField(max_length=100, db_index=True)
    external_id = models.IntegerField(unique=True)
    actors = models.ManyToManyField(
        "Actor",
        related_name="films"
    )
