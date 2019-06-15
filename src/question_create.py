import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "levelUp.settings")
import django
django.setup()

import re
import nltk
import difflib

from skill_learn.models import *


def create_question(text):
    split_words = [word for word in re.split(r'[^\w+]', text) if word != '']
    tagged_sentence = nltk.tag.pos_tag(split_words)
    #print(tagged_sentence)
    edited_sentence = [word for word,tag in tagged_sentence if tag == 'NNS' or tag == 'NNP']
    options=difflib.get_close_matches(edited_sentence[0], edited_sentence,10,0.0001)
    sents = nltk.sent_tokenize(text)
    que=""
    for x in sents:
        if(edited_sentence[0] in x):
            que = x.replace(edited_sentence[0], "_____")
            break
    new_options = []
    for option in options:
        option = option.lower()
        option = re.sub(r'[^\w+]', '', option)
        if len(new_options) >= 4:
            break
        if option in que or option in new_options:
            continue
        if nltk.stem.SnowballStemmer("english").stem(option) in new_options:
            continue
        new_options.append(option)
    while len(new_options) < 4:
        new_options.append('')
    options = new_options
    print(que)
    print(options[0],options[1],options[2],options[3])
    print('answer', edited_sentence[0])


for text_source in Text.objects.all():
    print()
    text = text_source.text
    create_question(text)
#print(text)
#text = text.split('\n')[5:]
#text = '\n'.join(text)
#print(repr(text))
#print(text.split('\n'))

