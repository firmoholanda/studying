#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/halloween-sale

def howManyGames(p, d, m, s)
    
  arr = []

  s-p < 0 ? (return 0) : arr[0] = p
  
  while (arr.sum + arr.last-d) <= s-d
    if arr.last > m+d
      arr.push(arr.last-d)
    else
      arr.push(m)  
    end
  end

  #p arr
  #p arr.sum
  return arr.length

end
# ------------------------------------------------------------------------------------- #

p howManyGames(20, 3, 6, 80)
# answer 6

p howManyGames(100, 1, 1, 99)
# answer 0

p howManyGames(100, 19, 1, 180)
# answer 1
