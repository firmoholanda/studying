#https://www.hackerrank.com/challenges/a-very-big-sum/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the aVeryBigSum function below.
def aVeryBigSum(ar)

    puts ar.sum

    #ar.each do |i|
    #    puts ar
    #end

    return ar.sum
end


ar = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]

result = aVeryBigSum ar

print result


