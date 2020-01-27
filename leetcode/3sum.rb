# https://leetcode.com/problems/3sum/

def three_sum(nums)

  return_arr = []
  comb = nums.combination(3)
  
  comb.each do |i|
    if i.sum == 0
      return_arr.push(i)
    end
  end

  p return_arr

end
# ------------------------------------------------------------------------------------- #

three_sum([-1, 0, 1, 2, -1, -4])
