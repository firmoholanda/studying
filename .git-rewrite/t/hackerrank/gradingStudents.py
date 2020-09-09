#https://www.hackerrank.com/contests/microverse-fast-track/challenges/grading
#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'gradingStudents' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY grades as parameter.
#
def nextM5(n):
    return (5 * (n // 5) + 5)

def gradingStudents(grades):
    myResult = []
    for i in grades:
        if (i >= 38) and ( (i % 5) >= 3):
            i = i + 5 - (i % 5)
        myResult.append(i)

    return myResult

if __name__ == '__main__':
    grades_count = 4
    grades = [73, 67, 38, 33]

    result = gradingStudents(grades)
    print(result)