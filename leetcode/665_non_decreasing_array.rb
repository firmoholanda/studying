p# https://leetcode.com/problems/word-pattern/

# @param {Integer[]} nums
# @return {Boolean}

# have to finish

def check_possibility(nums)

  arr = []

  (0...nums.size-1).each do |i|
    arr << (nums[i] <= nums[i + 1])
  end

  arr.any?(true)
    
end

# ------------------------------------------------------------------------------------- #

p check_possibility([4,2,3])

p check_possibility([4,2,1])