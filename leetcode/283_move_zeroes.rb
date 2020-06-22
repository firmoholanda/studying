# https://leetcode.com/problems/move-zeroes/
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)

  #count = 0
  #out_arr = []

  #nums.each { |n| n != 0 ? (out_arr << n) : (count += 1) }
  #count.times {out_arr << 0}

  #return out_arr
  

  count = nums.count(0)             # counts total of 0
  nums.delete_if { |x| x == 0 }     # remove 0s
  count.times { nums << 0 }           # add 0s to the end

  return nums

end
# ------------------------------------------------------------------------------------- #

p move_zeroes([0, 1, 0, 3, 12])
# [1,3,12,0,0]
