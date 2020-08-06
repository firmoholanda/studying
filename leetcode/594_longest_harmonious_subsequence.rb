# https://leetcode.com/problems/longest-harmonious-subsequence/

# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
    
  my_hash = nums.tally
  
  p my_hash.key(my_hash.values.max)

end
# ------------------------------------------------------------------------------------- #

find_lhs([1,3,2,2,5,2,3,7])
# 5
