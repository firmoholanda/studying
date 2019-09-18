#https://www.hackerrank.com/challenges/staircase/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the birthdayCakeCandles function below.
def birthdayCakeCandles(ar)
    puts ar.count(ar.max)
end


ar = [3, 2, 1, 3]

result = birthdayCakeCandles ar

