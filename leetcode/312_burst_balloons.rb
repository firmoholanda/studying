# https://leetcode.com/problems/burst-balloons/
# https://www.youtube.com/watch?v=vYquumk4nWw

# @param {Integer[]} nums
# @return {Integer}

def max_coins(nums)

  # add 1 to start and end
  nums.insert(0, 1)
  nums.insert(nums.size, 1)

  # initialize dp array. dp[l][r] is the max result of nums[l - r]
  dp = Array.new(nums.size){Array.new(nums.size, 0)}

  right = 1
  last = nums.size - 1

  while right < last
    left = right
    while left > 0
      current = left
      while current <= right
        dp[left][right] = [dp[left][right], dp[left][current - 1] + nums[left - 1] * nums[current] * nums[right + 1] + dp[current + 1][right]].max
        current += 1
      end
      left -= 1
    end
    right += 1
  end

  return dp[1][nums.size - 2]
    
end
# ------------------------------------------------------------------------------------- #

p max_coins([3,1,5,8])
