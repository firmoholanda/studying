# https://leetcode.com/problems/longest-harmonious-subsequence/

# @param {Integer[]} nums
# @return {Integer}
def find_lhs(nums)
    
  
  #my_hash = nums.tally
  
  #max_rep = my_hash.key(my_hash.values.max)
  
  
  #p nums.map { |i| ans << i if (i - max_rep == 1) } 
  
  #p nums.slice_when {|i| (max_rep - i == 1) || (max_rep - i == -1) }.to_a
  
  #nums.each do |i|
  #  ans << i if (max_rep - i == 1) || (max_rep - i == -1)
  #end
  
  #p nums.select { |i| (1 < max_rep - i < 1) }
  
  #p ans
  
  #p nums.select.minmax 1
  
  #p my_hash
  
  ans = []
  
  return 0 if nums.uniq.size == 1 || nums.empty?

  nums.uniq.each do |uniq_item|
    ans << nums.select { |i| (i - uniq_item) == 0 || (i - uniq_item) == 1}
  end
  
  return 0 if ans.map(&:length).max == 1
  
  p ans
  p ans.map(&:length).max

end
# ------------------------------------------------------------------------------------- #

#find_lhs([1,3,2,2,5,2,3,7])
# 5

#find_lhs([1,1,1,1])
# 0

#p find_lhs([1,3,5,7,9,11,13,15,17])
# 0

#find_lhs([1,2,3,4])
# 2

find_lhs([1,4,1,3,1,-14,1,-13])
# 2

