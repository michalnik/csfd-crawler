from django.contrib import admin

# Register your models here.
from django.contrib import admin
from top_favourites.models import Actor, Film


admin.site.register((Film, Actor))
admin.site.site_header = "ČSFD"
admin.site.index_title = "Oblíbené filmy"
