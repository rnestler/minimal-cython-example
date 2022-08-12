import numpy as np
import numpy.typing as npt
from dataclasses import dataclass
from typing import List

class Foo:
    def foo(self, z: List[float]) -> List[npt.NDArray[np.float64]]:
        return [np.array(z)]

foo = Foo()
print(foo.foo([1.0]))
