# https://leetcode.com/problems/distribute-candies/

# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
  
  #half = candies.size / 2

  #brother = candies[0...half]
  #sister = candies[half...candies.size]

  #p brother
  #p sister
  

  p [candies.uniq.size, (candies.size/2)].min



end
# ------------------------------------------------------------------------------------- #

distribute_candies([1,1,2,2,3,3])
# 3

distribute_candies([1,1,2,3])
# 2

distribute_candies([1,1,1,1])
# 1