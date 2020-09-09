#https://www.hackerrank.com/challenges/manasa-and-stones/problem

def stones(n, a, b)
  
  arr = []
  (0..n-1).each do |i|
    arr << (i * a) + ((n-1 - i) * b)
    #arr << (i * b) + ((n-1 - i) * a)
  end

  p arr.join(' ')
  return arr.uniq.sort.join(' ')

end
# ------------------------------------------------------------------------------------- #

p stones(3, 1, 2)
#p stones(4, 10, 100)
