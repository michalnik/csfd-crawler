from django.views.generic import ListView, DetailView
from top_favourites import normalize
from top_favourites.models import Film, Actor


# Create your views here.
class FilmDetailView(DetailView):
    model = Film

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["actors"] = Actor.objects.filter(films=kwargs["object"])
        return context


class ActorDetailView(DetailView):
    model = Actor

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["films"] = Film.objects.filter(actors=kwargs["object"])
        return context


class FilmListView(ListView):
    model = Film

    def get_queryset(self):
        if query := self.request.GET.get("query", ""):
            if query == "*":
                return Film.objects.all()[:300]
            return Film.objects.filter(name_normalized__contains=normalize(query))
        else:
            return Film.objects.none()

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        if query := self.request.GET.get("query", ""):
            if query == "*":
                context["actors"] = Actor.objects.all()[:300]
            else:
                context["actors"] = Actor.objects.filter(name_normalized__contains=normalize(query))
        else:
            context["actors"] = Actor.objects.none()
        context["query"] = query
        return context
