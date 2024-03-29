# Generated by Django 2.2.2 on 2019-06-15 13:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('skill_learn', '0004_text_rating'),
    ]

    operations = [
        migrations.AlterField(
            model_name='question',
            name='rating',
            field=models.FloatField(default=0),
        ),
        migrations.AlterField(
            model_name='text',
            name='rating',
            field=models.FloatField(default=0),
        ),
        migrations.AlterField(
            model_name='topic',
            name='rating',
            field=models.FloatField(default=0),
        ),
        migrations.AlterField(
            model_name='userrating',
            name='rating',
            field=models.FloatField(blank=True, null=True),
        ),
    ]
