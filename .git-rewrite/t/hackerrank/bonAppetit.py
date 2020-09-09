#https://www.hackerrank.com/challenges/bon-appetit/problem

#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the bonAppetit function below.
def bonAppetit(bill, k, b):
    bActual = 0
    bCharged = b
    for i, item in enumerate(bill):
        if (i != k):
           bActual += item
    
    bActual /= 2                                #divide by 2
        
    if ( (bCharged - bActual) != 0 ):
        return print(int(bCharged - bActual)
    else:
        return print("Bon Appetit")

if __name__ == '__main__':

    n = 4
    k = 1
    bill = [3, 10, 2, 9]
    b = 12

    bonAppetit(bill, k, b)