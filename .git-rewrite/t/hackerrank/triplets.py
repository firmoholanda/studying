#!/bin/python3
#https://www.hackerrank.com/challenges/compare-the-triplets/problem

import math
import os
import random
import re
import sys

# Complete the compareTriplets function below.
def compareTriplets(a, b):
    myResult = [0, 0]
    for r in range(3):
        if a[r] > b[r]:
            myResult[0] += 1
        if a[r] < b[r]:
            myResult[1] += 1

    return myResult

if __name__ == '__main__':
    #fptr = open(os.environ["c:\\temp\\triplet.txt"], 'w')

    #a = list(map(int, input().rstrip().split()))
    #b = list(map(int, input().rstrip().split()))

    a = [17, 28, 30]
    b = [99, 16, 8]

    result = compareTriplets(a, b)

    print(result)
    

    #fptr.write(' '.join(map(str, result)))
    #fptr.write('\n')

    #fptr.close()
