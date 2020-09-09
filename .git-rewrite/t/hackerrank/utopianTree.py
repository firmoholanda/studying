#https://www.hackerrank.com/challenges/utopian-tree/problem
#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the utopianTree function below.
def utopianTree(n):
    height = 1
    for i in range(1,n+1):
        if (i%2 == 0):
            height += 1
        elif (i%2 == 1):
            height*=2
    return height


if __name__ == '__main__':

    #imput
    n = [0, 1, 4]

    for i in n:
        result = utopianTree(i)
        print(result)
