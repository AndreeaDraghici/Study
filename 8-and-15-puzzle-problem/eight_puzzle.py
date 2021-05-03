from search import EightPuzzle
import bisect
import collections
import collections.abc
import heapq
import operator
import os.path
import random
import math
import functools
from itertools import chain, combinations


class EightPuzzleMiss(EightPuzzle):
    def h(self, node):
        """ Return the heuristic value for a given state. Default heuristic function used is
        h(n) = number of misplaced tiles """
        return sum(s != g for (s, g) in zip(node.state, self.goal))


class EightPuzzleMht(EightPuzzle):
    def h(self, node):
        """ implement Manhattan distance. Hint! Look at
                Missplaced Tiles heuristic function above """
        return sum((abs(s / 3 - g / 3) + abs(s % 3 - g % 3)) for (s, g) in zip(node.state, self.goal))

