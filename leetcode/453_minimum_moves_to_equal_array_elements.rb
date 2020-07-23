# https://leetcode.com/problems/rotate-array/

# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
  
  #return 0 if (nums.max - nums.min) == 0
  #(nums.max - nums.min) + (nums.size - (nums.max - nums.min))

  p nums.sum - (nums.min * nums.size)

end
# ------------------------------------------------------------------------------------- #

min_moves([1,2,3])
# 3

min_moves([1,1,1])
# 0

min_moves([1,2])
# 


min_moves([1,2,3,4])
#