# https://leetcode.com/problems/valid-palindrome/

# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  
  out_arr = []

  left.upto(right) do |n|

    # convert to array of int
    n_arr = n.to_s.split('').map(&:to_i)

    # if no digit is 0 and all are self-dividing
    if !n_arr.include?(0) && (n_arr.map{ |i| n % i }.inject(:+) == 0)
      out_arr << n
    end

  end

  return out_arr
    
end
# ------------------------------------------------------------------------------------- #

p self_dividing_numbers(1, 22)
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
