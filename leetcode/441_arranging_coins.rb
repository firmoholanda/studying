# https://leetcode.com/problems/word-pattern/

# @param {Integer} n
# @return {Integer}
def arrange_coins(n)

  i = 1
  t_numb = []

  return 0 if n < 1
  return 1 if n == 1

  while i <= n 
    t_numb << ((i+1)*i)/2
    i += 1
  end

  p t_numb
  
  p t_numb.index(n) ? t_numb.index(n) + 1 : t_numb.index{ |i| i >= n }
  

end

# ------------------------------------------------------------------------------------- #

arrange_coins(5)
#2

#arrange_coins(8)
#3

#arrange_coins(1)
#1

#arrange_coins(3)
#2