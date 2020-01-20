#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/game-of-thrones

def birthdayCakeCandles(arr)

  arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }.values.max

end
# ------------------------------------------------------------------------------------- #

birthdayCakeCandles([3, 2, 1, 3])