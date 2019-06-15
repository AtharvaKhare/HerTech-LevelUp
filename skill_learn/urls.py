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
    url(r'^api-auth/', include('rest_framework.urls')),
]

