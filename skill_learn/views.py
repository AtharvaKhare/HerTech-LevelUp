from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets
from django.views.decorators.csrf import csrf_exempt, csrf_protect

from skill_learn.models import *
from skill_learn.serializers import *

import json
import math


def probability(rating1, rating2):
    return 1.0 * 1.0 / (1 + 1.0 * math.pow(10, 1.0 * (rating1 - rating2) / 10))


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


@csrf_exempt
def update_ratings(request):
    """
    Currently rated questions. Topics should be rated instead.
    """

    if request.method != "POST":
        return HttpResponse("POST-only")

    json_body = json.loads(request.body)
    correct = json_body['correct']
    incorrect = json_body['incorrect']
    # 1 user for prototype, use request.body['student'] in future
    student = Student.objects.all()[0]
    topic = Topic.objects.all()[0]
    rating = UserRating.objects.filter(student=student, topic=topic)
    if not rating:
        rating = UserRating(student=student, topic=topic, rating=5)
        rating.save()
    else:
        rating = rating[0]

    for question_id in json_body['questions_list']:
        question = Question.objects.get(id=question_id)
        user_rating = rating.rating
        question_rating = question.rating
        print(user_rating, question_rating)
        uk = 0.8
        qk = 0.1
        p_correct = probability(user_rating, question_rating)
        p_incorrect = probability(question_rating, user_rating)
        if correct / (correct + incorrect) >= 0.5:
            user_rating += uk * (1 - p_correct)
            question_rating += qk * (0 - p_incorrect)
        else:
            user_rating += uk * (0 - p_correct)
            question_rating += qk * (1 - p_incorrect)

        if user_rating >= 9:
            user_rating = 9.0
        if user_rating <= 2:
            user_rating = 2.0
        rating.rating = user_rating
        rating.save()
        question.rating = question_rating
        question.save()
        print(user_rating, question_rating)

    return HttpResponse('ok')


@csrf_exempt
def show_questions(request):
    if request.method != "POST":
        return HttpResponse("POST-only")
    request_body = json.loads(request.body)
    print(request_body)
    if 'student' not in request_body:
        return HttpResponse("Send 'student' also")

    student = Student.objects.filter(username=request_body['student'])
    if not student:
        return HttpResponse(request_body['student'] + " not found")
    student = student[0]
    # Assume 1 topic for now
    topic = Topic.objects.all()[0]
    rating = UserRating.objects.filter(student=student, topic=topic)
    if not rating:
        rating = UserRating(student=student, topic=topic, rating=5)
        rating.save()
    else:
        rating = rating[0]

    # Assume 1 topic for now
    questions = Question.objects.all()
    question_rating_delta = [abs(question.rating - rating.rating) for question in questions]
    question_rating_delta, questions = zip(*sorted(zip(question_rating_delta, questions), key=lambda x: x[0]))
    questions = questions[:3]
    output = dict()
    output['questions'] = []
    for question in questions:
        output['questions'].append(question.id)

    return HttpResponse(json.dumps(output))
