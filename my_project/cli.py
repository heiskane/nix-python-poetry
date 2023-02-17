import typer

from my_project.main import app


def run_app() -> None:
    typer.run(app)
