from django.urls import path
from django.conf.urls import url, include
from rest_framework import routers

from skill_learn import views

router = routers.DefaultRouter()
router.register(r'student', views.StudentViewSet)
router.register(r'topic', views.TopicViewSet)
router.register(r'user_rating', views.UserRatingViewSet)
router.register(r'text', views.TextViewSet)
router.register(r'question', views.QuestionViewSet)

urlpatterns = [
    path('', views.index, name='index'),
    path('api/v0/', include(router.urls)),
    path('api/v0/update_ratings/', views.update_ratings, name='update_ratings'),
    path('api/v0/show_questions/', views.show_questions, name='show_questions'),
]

