#https://www.hackerrank.com/challenges/chocolate-feast/problem

def chocolateFeast(n, c, m)

  arr = []
  total_eaten = total_warp = n / c

  while total_warp >= m do
    total_eaten += (total_warp / m)
    arr.push(total_warp / m)
    total_warp -= (total_warp / m) * (m-1)
  end

  p arr
  return total_eaten

end
# ------------------------------------------------------------------------------------- #

#chocolateFeast(10, 2, 5)
#chocolateFeast(12, 4, 4)
#chocolateFeast(6, 2, 2)
#chocolateFeast(15, 3, 2)
#chocolateFeast(50, 2, 2)

#puts chocolateFeast(4586, 14, 98)
#330

puts chocolateFeast(43203, 60, 5)
#899