from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets

from skill_learn.models import *
from skill_learn.serializers import *


class StudentViewSet(viewsets.ModelViewSet):
    queryset = Student.objects.all()
    serializer_class = StudentSerializer


class TopicViewSet(viewsets.ModelViewSet):
    queryset = Topic.objects.all()
    serializer_class = TopicSerializer


class UserRatingViewSet(viewsets.ModelViewSet):
    queryset = UserRating.objects.all()
    serializer_class = UserRatingSerializer


class TextViewSet(viewsets.ModelViewSet):
    queryset = Text.objects.all()
    serializer_class = TextSerializer


class QuestionViewSet(viewsets.ModelViewSet):
    queryset = Question.objects.all()
    serializer_class = QuestionSerializer


def index(request):
    return HttpResponse("Hello, world. You're at skill learn.")
