# Generated by Django 2.2.2 on 2019-06-15 06:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('skill_learn', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='text',
            name='identifier',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
    ]
