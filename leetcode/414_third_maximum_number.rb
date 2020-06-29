# https://leetcode.com/problems/third-maximum-number/

# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)

  nums.uniq.size < 3 ? (nums.max) : (nums.sort.uniq[-3])

end
# ------------------------------------------------------------------------------------- #

#p third_max([3, 2, 1])
# 1

#p third_max([1, 2])


#p third_max([2, 2, 3, 1])
# 1

p third_max([1, 1, 2])
# 2

#p third_max([3, 2, 1])
# 1
