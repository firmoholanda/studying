# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/

def max_profit(prices)

  buy = Float::INFINITY
  sell = 0
  cooldown = 0
  
  prices.each do |p|
    buy = [buy, (p-cooldown)].min      # buy is current price - profit after cooldown
    cooldown = [cooldown, sell].max    # in cooldown, profit is last sell profit
    sell = [sell, (p-buy)].max         # profit is the current price - last buy price
  end

  return sell

end
# ------------------------------------------------------------------------------------- #
 
p max_profit([1,2,3,0,2])
