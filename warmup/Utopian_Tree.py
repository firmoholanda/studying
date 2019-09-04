#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the utopianTree function below.
def utopianTree(n):
    height = 0
    for i in range(n):
        if i % 2 == 0:
            height += 1

        elif not i % 2 == 0:
            height *= height

        return height

if __name__ == '__main__':

    n = [0, 1, 4]

    result = utopianTree(n)
  
    print(result)
