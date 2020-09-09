#!/bin/python3
#https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

import math
import os
import random
import re
import sys

# Complete the sockMerchant function below.
def sockMerchant(n, ar):
    #get unique colors
    uniqueSockColor = []
    for i in ar: 
        if i not in uniqueSockColor:
            uniqueSockColor.append(i)

    #list unique colors frequency
    uniqueSockColorFrequency = []
    for i in uniqueSockColor:
        uniqueSockColorFrequency.append(ar.count(i))

    #count pairs
    totalPairs = 0
    for i in uniqueSockColorFrequency:
        totalPairs += (i//2)

    return totalPairs


if __name__ == '__main__':
    #fptr = open(os.environ['OUTPUT_PATH'], 'w')

    #n = int(input())
    #ar = list(map(int, input().rstrip().split()))

    n = 9
    ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]

    result = sockMerchant(n, ar)

    print(result)

    #fptr.write(str(result) + '\n')
    #fptr.close()


