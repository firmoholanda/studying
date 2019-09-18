#https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the catAndMouse function below.
def catAndMouse(x, y, z):
    #if (( (z-x) + (z-y) ) == 0) or ( (x > z ) and (y > z) ):
    if (( (z-x) + (z-y) ) == 0)  :
        return ("Mouse C")
    elif ( abs(z-x) < abs(z-y) ):
        return ("Cat A")
    else:
        return ("Cat B")

if __name__ == '__main__':
    
    q = 100
    #x = [22, 33]
    #y = [75, 86]
    #z = [70, 59]

    with open("c:/temp/imputText.txt") as f:
        data = list(f.read().split("\n"))

    for i in data:
        x, y, z = map( int, i.split() )
        print (catAndMouse(x, y, z))
    
    #print( catAndMouse(47, 30, 6) )