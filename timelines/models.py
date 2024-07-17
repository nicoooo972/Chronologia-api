from django.db import models


class Timeline(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField()
    events = models.JSONField()

    def __str__(self):
        return self.title
