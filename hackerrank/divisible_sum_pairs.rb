#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/game-of-thrones

def divisibleSumPairs(k, ar)

  comb = ar.combination(2).to_a
  return comb.map { |i| (i.sum % k) }.count(0)

end
# ------------------------------------------------------------------------------------- #

divisibleSumPairs(3, [1, 3, 2, 6, 1, 2])