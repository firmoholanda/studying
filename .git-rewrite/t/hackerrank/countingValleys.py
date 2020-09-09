#https://www.hackerrank.com/challenges/counting-valleys/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup

#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the countingValleys function below.
def countingValleys(n, s):
    valleyArray = []
    valleyArray.append(0)                          #fist step is at sea level
    for i in range(n): 
        if s[i] == "U":
            #print(valleyArray[i])
            valleyArray.append(valleyArray[i] + 1)
        elif s[i] == "D":
            valleyArray.append(valleyArray[i] - 1)
        else:
            print("error")

    totalValley = 0
    for i in range(len(valleyArray)-1):
        if (valleyArray[i+1] <= -1) and (valleyArray[i] == 0):
            totalValley += 1

    return totalValley


if __name__ == '__main__':
    #fptr = open(os.environ['OUTPUT_PATH'], 'w')

    #n = int(input())
    #s = input()

    n = 10
    s = "DUDDDUUDUU"

    #answer 2

    result = countingValleys(n, s)

    print(result)

    #fptr.write(str(result) + '\n')
    #fptr.close()