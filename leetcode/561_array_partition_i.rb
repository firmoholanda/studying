# https://leetcode.com/problems/length-of-last-word/

# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)

  #left,right = nums.sort.each_slice(nums.size/2).to_a
  #nums.size == 2 ? (return [left[0], right[0]].min) : (left.min + right.min)
  #left == right ? (return left.sum) : left.min + right.min

  #count  = 0
  #ans = nums.sort.each_slice(2).to_a.inject(0){|sum, i| sum + i.min }

  #ans.each { |i| count  +=  i.min }

  #p ans.inject(0){|sum, i| sum + i.min }
  
  #p ans
  #p count

  nums.sort.each_slice(2).to_a.inject(0){ |sum, i| sum + i.min }

end

# ------------------------------------------------------------------------------------- #

#array_pair_sum([1,4,3,2])
# 4

#p array_pair_sum([1,1])
# 1

#p array_pair_sum([1,2])
# 4

p array_pair_sum([7,3,1,0,0,6])
# 7