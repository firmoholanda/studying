# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

def max_profit(prices)

  buy_day = prices.index(prices.min)
  
  if (buy_day == prices.size-1) || (prices.size == 0)
    return 0
  else
    sell_days = prices[buy_day+1, prices.size-1]
    p sell_days
    p sell_days.max

    profit = sell_days.max - prices.min
    #p profit
    return profit
  end

  


end
# ------------------------------------------------------------------------------------- #

#p max_profit([7,1,5,3,6,4])
#p max_profit([7,6,4,3,1])
#p max_profit([])
 
p max_profit([2,4,1])
# 2
