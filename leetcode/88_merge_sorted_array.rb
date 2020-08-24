# https://leetcode.com/problems/merge-sorted-array/

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, nums2)
  
  #nums1.delete(0).zip(nums2).flatten
  #(nums1.delete(0) + nums2).sort

  p nums1[0...nums1.size-nums2.size].concat(nums2).sort!


end
# ------------------------------------------------------------------------------------- #

merge([1,2,3,0,0,0], [2,5,6])
# [1,2,2,3,5,6]
