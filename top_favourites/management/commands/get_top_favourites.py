from django.core.management.base import BaseCommand
from top_favourites import get_films, get_actors
from top_favourites.models import Film, Actor


class Command(BaseCommand):
    help = """The get_top_favourites command fill the database
    with films and actors.
    """

    def add_arguments(self, parser):
        parser.add_argument(
            "--hundreds",
            type=int,
            default=3,
            metavar="INT",
            help="Count of hundreds to retrieve from CSFD."
        )

    def handle(self, *args, **options):
        for film in get_films(options["hundreds"]):
            f, created = Film.objects.get_or_create(
                external_id=film[1],
                defaults={"name": film[0]}
            )
            for actor in get_actors(film[2]):
                a, craeted = Actor.objects.get_or_create(
                    external_id=actor[1],
                    defaults={"name": actor[0]}
                )
                if craeted:
                    f.actors.add(a)
                    a.save()

            f.save()

