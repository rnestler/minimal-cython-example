from dataclasses import dataclass

@dataclass
class Foo:
    name: str


NAMES = [
        Foo(name="bar")
]
