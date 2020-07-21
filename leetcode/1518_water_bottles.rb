# https://leetcode.com/problems/water-bottles/

# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)

  b_drunk = []
  b_remain = []

  b_drunk << num_bottles 

  while (b_drunk.last >= num_exchange)
    b_drunk << num_bottles / num_exchange
    num_bottles = (num_bottles / num_exchange) + (num_bottles % num_exchange)
  end
 
  #if b_drunk.last < num_exchange then ()

  p b_drunk
  #p b_remain
  
    
end
# ------------------------------------------------------------------------------------- #

#num_water_bottles(9, 3)
# 13

num_water_bottles(15, 4)
# 19

#num_water_bottles(5, 5)
# 6

#num_water_bottles(2, 3)
# 2
