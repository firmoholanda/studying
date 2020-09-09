#https://www.hackerrank.com/challenges/staircase/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)

    for i in 1..n
        puts ("#" * i).rjust(n)
    end

end


n = 6

result = staircase n

