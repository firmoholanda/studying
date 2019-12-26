#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/electronics-shop
#!/bin/ruby

def getMoneySpent(keyboards, drives, b)
   
  if (keyboards.min + drives.min) > b
    return -1
  else
    my_arr = keyboards.product(drives).map(&:sum)
    my_arr.delete_if {|i| i > b }
    return my_arr.max
  end

end

# ------------------------------------------------------------------------------------- #

b = 10
keyboards = [3, 1] 
drives = [5, 2, 8]

puts getMoneySpent(keyboards, drives, b)