# https://leetcode.com/problems/counting-bits/

# @param {Integer} num
# @return {Integer[]}

# ruby to binary converter
#5.to_s(2)

def int_to_binary(integer)
  binary = []

  while integer > 0
    binary << integer % 2
    integer /= 2
  end

  return binary.reverse
end

def count_bits(num)
  my_arr = []

  0.upto(num) do |i|
    my_arr << int_to_binary(i).count(1)    
  end

  return my_arr
  
end
# ------------------------------------------------------------------------------------- #

p count_bits(2)
# [0,1,1]

p count_bits(5)
# [0,1,1,2,1,2]

#p int_to_binary(5)
