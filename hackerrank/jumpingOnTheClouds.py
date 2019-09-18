#https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup
#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the jumpingOnClouds function below.
def jumpingOnClouds(c):
    pathList = []

    #check fist cloud
    if (c[0] == 0):
        pathList.append(0)
        j = 0
    else:
        pathList.append(1)
        j = 1

    #check the rest
    while (j <= n-2):
        if ((j+2)>(n-1)):
            j += 1
            pathList.append(j)
            break
        if (c[j+2] == 0):
            j += 2
            pathList.append(j)
        else:
            j += 1
            pathList.append(j)
            
    return len(pathList)-1
    #return pathList

if __name__ == '__main__':
    n = 6
    c = [0, 0, 0, 1, 0, 0]

    result = jumpingOnClouds(c)
  
    print(result)