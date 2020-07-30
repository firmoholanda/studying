# https://leetcode.com/problems/max-consecutive-ones/


# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  
  consec_arr = []
  consec_count = 0

  (0...nums.size).each do |i|
    nums[i] == 1 ? (consec_count += 1) : (consec_count = 0)
    consec_arr << consec_count
  end
  p consec_arr
  p consec_arr.max
  
  p nums.partition { |v| v == 0 }
end

# ------------------------------------------------------------------------------------- #


find_max_consecutive_ones([1,1,0,1,1,1])
# 3

#find_max_consecutive_ones([1,0,1,1,0,1])
# 2
