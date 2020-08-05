# https://leetcode.com/problems/isomorphic-strings/

# @param {Integer[]} nums
# @return {Integer}

def find_length_of_lcis(nums)

  return 0 if nums.empty?
  ans = nums.slice_when { |prev, curr| curr < prev.next }.to_a
  ans.map(&:length).max
      
end
# ------------------------------------------------------------------------------------- #

#p find_length_of_lcis([1,3,5,4,7])
# 3


#p find_length_of_lcis([2,2,2,2,2])
# 1

#p find_length_of_lcis([1,3,5,7])
# 4

p find_length_of_lcis([])
# 0
