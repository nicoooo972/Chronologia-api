from rest_framework import viewsets
from .models import Timeline
from .serializers import TimelineSerializer


class TimelineViewSet(viewsets.ModelViewSet):
    queryset = Timeline.objects.all()
    serializer_class = TimelineSerializer
