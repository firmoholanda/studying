#https://www.hackerrank.com/challenges/chocolate-feast/problem

def chocolateFeast(n, c, m)

  total_eten = []
  total_warp = []

  purchased_choc = n / c

  total_eten.push(purchased_choc)
  total_warp.push(purchased_choc)

  i = 0
  while total_warp.min >= m do
    total_eten.push(total_warp[i] / m)
    total_warp.push(total_warp[i] - (total_warp[i] / m))
    i += 1
  end

  p total_eten
  #p total_warp
  #puts total_eten.sum
  return total_eten.sum

end
# ------------------------------------------------------------------------------------- #

#chocolateFeast(10, 2, 5)
#chocolateFeast(12, 4, 4)
#chocolateFeast(6, 2, 2)
#chocolateFeast(15, 3, 2)
#chocolateFeast(50, 2, 2)

puts chocolateFeast(4586, 14, 98)
#330