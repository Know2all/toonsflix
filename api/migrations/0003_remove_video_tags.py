# Generated by Django 5.0.3 on 2024-04-23 13:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_tag_video_tags'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='video',
            name='tags',
        ),
    ]
