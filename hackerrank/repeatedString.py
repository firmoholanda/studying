#https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup
#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the repeatedString function below.
def repeatedString(s, n):
    
    lenS = len(s)
    mod = n % lenS
    totalAinS = s.count('a')
    nDivLenS = n / lenS

    totalAsSubString = math.floor(nDivLenS) * totalAinS
    remanderA = s[:mod].count('a')
 
    return (totalAsSubString + remanderA)
    

if __name__ == '__main__':

    s = "gfcaaaecbg"
    n = 547602

    #aba
    #10
    #7
    
    #gfcaaaecbg
    #547602
    #164280

    #ceebbcb
    #817723
    #0

    #kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm
    #736778906400
    #out: 51574523448


    result = repeatedString(s, n)
    print(result)

