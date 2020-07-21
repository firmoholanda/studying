# https://leetcode.com/problems/smallest-range-i/

# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def smallest_range_i(a, k)

  ((a.max - k) - (a.min + k)) < 0 ? (return 0):(return (a.max - k) - (a.min + k) )
  
end
# ------------------------------------------------------------------------------------- #

p smallest_range_i([1], 0)
# 0

p smallest_range_i([0,10], 2)
# 6

p smallest_range_i([1,3,6], 3)
# 0