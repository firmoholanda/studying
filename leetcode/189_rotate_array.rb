# https://leetcode.com/problems/rotate-array/

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)

  nums.pop(k) + nums
  
end
# ------------------------------------------------------------------------------------- #

p rotate([1,2,3,4,5,6,7], 3)
#[5,6,7,1,2,3,4]

p rotate([-1,-100,3,99], 2)
#[3,99,-1,-100]

# nums.rotate(k)