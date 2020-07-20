# https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/

# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
  
  p candies.map { |c| (c + extra_candies) >= candies.max }

end
# ------------------------------------------------------------------------------------- #

kids_with_candies([2,3,5,1,3], 3)
# [true,true,true,false,true]