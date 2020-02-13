# https://leetcode.com/problems/climbing-stairs/

# @param {Integer} n
# @return {Integer}

def climb_stairs(n)
  divisible = n/2
  rest = n%2
  
  #p divisible
  #p rest
  #p divisible + rest

  my_arr = []
  (divisible + rest + 1).upto(n) do |i|
    my_arr << i
  end

  p my_arr

end
# ------------------------------------------------------------------------------------- #

#climb_stairs(3)  # 3
#climb_stairs(6)  # 11

climb_stairs(6)  # 15