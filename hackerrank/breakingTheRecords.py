#https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the breakingRecords function below.
def breakingRecords(scores):
    highestScore = scores[0]
    lowestScore = scores[0]
    highestScoreList = []
    lowestScoreList = []
    bestScore = 0
    worstScore = 0


    for i in scores:
        if (i >= highestScore):
            highestScore = i
            highestScoreList.append(i)
        elif (i <= lowestScore):
            lowestScore = i
            lowestScoreList.append(i)

    if (len(highestScoreList) != 0) and (highestScoreList[0] > scores[0]):
        bestScore += 1
    elif (len(lowestScoreList) != 0) and (lowestScoreList[0] < scores[0]):
        worstScore +=1

    for i in range((len(highestScoreList)-1)):
        if (highestScoreList[i+1] > highestScoreList[i]):
            bestScore += 1

    for i in range((len(lowestScoreList)-1)):
        if (lowestScoreList[i+1] < lowestScoreList[i]):
            worstScore += 1
    
    
    return (str(bestScore) + " " + str(worstScore))

if __name__ == '__main__':

    n = 9
    #scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]
    scores = [10, 5, 20, 20, 4, 5, 2, 25, 1]

    #with open("c:/temp/imputText.txt") as f:
    #    scores = list(map(int, f.read().rstrip().split() ))

    result = breakingRecords(scores)
    print(result)