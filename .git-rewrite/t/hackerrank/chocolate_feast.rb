#https://www.hackerrank.com/challenges/chocolate-feast/problem

def chocolateFeast(n, c, m)

  arr = []
  eaten = wrappers = n / c
  arr.push(wrappers)

  while wrappers >= m do
    eaten += (wrappers / m)
    wrappers -= (wrappers / m) * (m-1)
    arr.push(wrappers)
  end

  p arr
  return eaten

end
# ------------------------------------------------------------------------------------- #

#puts chocolateFeast(10, 2, 5)
#puts chocolateFeast(12, 4, 4)
#puts chocolateFeast(6, 2, 2)
#puts chocolateFeast(15, 3, 2)
#puts chocolateFeast(50, 2, 4)

puts chocolateFeast(4586, 14, 98)
#330

#puts chocolateFeast(43203, 60, 5)
#899