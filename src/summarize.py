import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "levelUp.settings")
import django
django.setup()

from gensim.summarization import summarize
from skill_learn.models import *

for text in Text.objects.all():
    if 'original' not in text.identifier:
        continue
    summary = summarize(text.text)
    Text(topic=text.topic,
         identifier=text.identifier.replace(
             'original', 'auto_summary'
             ),
         text=summary,
         rating=text.rating
         ).save()
