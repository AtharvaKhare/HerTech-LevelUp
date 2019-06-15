from django.db import models


class Student(models.Model):
    username = models.CharField(max_length=100)

    def __str__(self):
        return self.username


class Topic(models.Model):
    name = models.TextField(blank=True, null=True)
    rating = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class UserRating(models.Model):
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    topic = models.ForeignKey(Topic, on_delete=models.CASCADE)
    rating = models.IntegerField(blank=True, null=True)

    def __str__(self):
        return self.student.username + "(" + self.topic + "): " + str(self.rating)


class Text(models.Model):
    topic = models.ForeignKey(Topic, on_delete=models.CASCADE)
    identifier = models.CharField(max_length=200, blank=True, null=True)
    text = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.topic.name + ": " + self.identifier


class Question(models.Model):
    summary_text = models.ForeignKey(Text, null=True, blank=True, on_delete=models.CASCADE, related_name='summary_text')
    original_text = models.ForeignKey(Text, null=True, blank=True, on_delete=models.CASCADE, related_name='original_text')
    question = models.TextField(blank=True, null=True)
    option1 = models.TextField(blank=True, null=True)
    option2 = models.TextField(blank=True, null=True)
    option3 = models.TextField(blank=True, null=True)
    option4 = models.TextField(blank=True, null=True)
    correct = models.TextField(blank=True, null=True)
    rating = models.IntegerField(default=0)

    def __str__(self):
        return self.question
