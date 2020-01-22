#https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
    sumArray = Array.new
    row = 0
    4.times do |row|
        col = 0
        4.times do |col|
            sum = 0

            sum += arr[row][col]
            sum += arr[row][col + 1]
            sum += arr[row][col + 2]
            sum += arr[row + 1][col + 1]
            sum += arr[row + 2][col]
            sum += arr[row + 2][col + 1]
            sum += arr[row + 2][col + 2]
   
            sumArray.push(sum)
        end
    end

    return sumArray.max

end
# ------------------------------------------------------------------------------------- #

arr = [ [1, 1, 1, 0, 0, 0], 
        [0, 1, 0, 0, 0, 0],
        [1, 1, 1, 0, 0, 0],
        [0, 0, 2, 4, 4, 0],
        [0, 0, 0, 2, 0, 0],
        [0, 0, 1, 2, 4, 0]
      ]

result = hourglassSum arr


puts result

