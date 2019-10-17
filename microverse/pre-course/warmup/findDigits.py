#https://www.hackerrank.com/challenges/find-digits/problem
#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the findDigits function below.
def findDigits(n):


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    t = int(input())

    for t_itr in range(t):
        n = int(input())

        result = findDigits(n)

        fptr.write(str(result) + '\n')

    fptr.close()
    #return pathList

if __name__ == '__main__':
    n = 6
    c = [0, 0, 0, 1, 0, 0]

    result = jumpingOnClouds(c)
  
    print(result)