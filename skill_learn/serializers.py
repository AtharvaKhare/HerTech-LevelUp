from skill_learn.models import *
from rest_framework import serializers


class StudentSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Student
        fields = ('username',)


class TopicSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Topic
        fields = ('name', 'rating',)


class UserRatingSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = UserRating
        fields = ('student', 'topic', 'rating',)


class TextSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Text
        fields = ('topic', 'identifier', 'text',)


class QuestionSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Question
        fields = ('summary_text', 'original_text', 'question', 'option1', 'option2', 'option3', 'option4', 'correct', 'rating',)
