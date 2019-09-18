#https://www.hackerrank.com/challenges/plus-minus/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)

    positiveNum = 0.0
    negativeNum = 0.0
    zeroNum = 0.0

    arr.each do |i|

        if i > 0
            positiveNum += 1
        elsif i < 0
            negativeNum += 1          
        else
            zeroNum += 1
        end
            
    end

    puts "%.6f" % (positiveNum / arr.length)
    puts "%.6f" % (negativeNum / arr.length)
    puts "%.6f" % (zeroNum     / arr.length)
    
end


arr = [-4, 3, -9, 0, 4, 1]

result = plusMinus arr

#print result


