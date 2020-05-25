# https://leetcode.com/problems/climbing-stairs/

# @param {Integer} n
# @return {Integer}

def climb_stairs(n)

  fibo_arr = [0, 1]
  n.times do fibo_arr << (fibo_arr[-1] + fibo_arr[-2]) end
  p fibo_arr
  fibo_arr.last

end
# ------------------------------------------------------------------------------------- #

#p climb_stairs(3)
p climb_stairs(5)
