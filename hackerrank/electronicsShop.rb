#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/electronics-shop
#!/bin/ruby

def getMoneySpent(keyboards, drives, b)
  herbudget = b
  if (keyboards.min + drives.min) > herbudget
    return -1
  else
    if keyboards.max > drives.max
      drives.each do |dItem|
        if (dItem + keyboards.max) < herbudget
          return dItem + keyboards.max
        end
      end
    else
      keyboards.each do |bkItem|
        if (bkItem + drives.max) < herbudget
          return bkItem + drives.max
        end
      end
    end
  end
end

b = [10, 2, 3]
keyboards = [3, 1] 
drives = [5, 2, 8]

puts getMoneySpent(keyboards, drives, b)