# https://leetcode.com/problems/coin-change/

# http://nizhu.github.io/ruby-intro-site/blog/2013/07/28/numbers/

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
   
  # create dp array
  dp = [0] + [Float::INFINITY] * amount

  1.upto(amount+1) do |i|
    tp = Float::INFINITY
    coins.each do |j|
      if j <= i then (tp = [tp,dp[i-j] + 1].min) end
    end
    dp[i] = tp
  end
  
  p dp.size
  p dp

  
end
# ------------------------------------------------------------------------------------- #

coin_change([1, 2, 5], 11)
