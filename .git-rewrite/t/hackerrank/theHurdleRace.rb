#https://www.hackerrank.com/challenges/the-hurdle-race/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hurdleRace function below.
def hurdleRace(k, height)

    if (height.max - k) > 0
        puts height.max - k
    else
        puts 0
    end

end

k = 7
height = [2, 5, 4, 5, 2]

result = hurdleRace(k, height)
