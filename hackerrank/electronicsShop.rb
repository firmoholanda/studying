#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/electronics-shop
#!/bin/ruby

def getMoneySpent(keyboards, drives, b)
  herBudget = b
  
  if (keyboards.min + drives.min) > herBudget
    return -1
  else
    if keyboards.max > drives.max
      drives.each do |dItem|
        if (dItem + keyboards.max) < herBudget
          return dItem + keyboards.max
        end
      end
    else
      keyboards.each do |kbItem|
        if (kbItem + drives.max) < herBudget
          return kbItem + drives.max
        end
      end
    end
  end

end

b = 10
keyboards = [3, 1] 
drives = [5, 2, 8]

puts getMoneySpent(keyboards, drives, b)