# https://leetcode.com/problems/fair-candy-swap/

# not finished

# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def fair_candy_swap(a, b)
  
  ans = []
  total_candy_each = (a.sum + b.sum) / 2

  p total_candy_each

  if a.sum > b.sum
    ans[0] = a.sum - total_candy_each
    ans[1] = total_candy_each - ans[0]
  else
    ans[0] = b.sum - total_candy_each
    ans[1] = total_candy_each - ans[0]
  end

  #ans = [a.sum, b.sum].max

  p ans


end
# ------------------------------------------------------------------------------------- #

#fair_candy_swap([1,1], [2,2])
# [1,2]

fair_candy_swap([2], [1,3])
# [2,3]
# [0,1]

#fair_candy_swap([1,2,5], [2,4])
# [5,4]
# [1,0]
