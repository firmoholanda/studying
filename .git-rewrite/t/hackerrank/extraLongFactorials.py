#https://www.hackerrank.com/challenges/extra-long-factorials/problem

#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the extraLongFactorials function below.
def extraLongFactorials(n):
    if n == 0:
        return 1
    else:
        return n * extraLongFactorials(n-1)


if __name__ == '__main__':
 

    result = extraLongFactorials(25)
    print(result)

