#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/picking-numbers

def pickingNumbers(a)
  
  my_arr = []
  return_arr = []
  a.sort!
  uniq_arr = a.uniq
  my_hash = Hash.new

  uniq_arr.each do |i|
    a.each do |j|
      if (j-i).abs <= 1 then my_arr.push(j) end
    end
    my_hash.store(i, my_arr)
    my_arr = []
  end

  my_hash.each do |k, v|
    if (v.max - v.min) <= 1 then return_arr.push(v.length) end
  end

  p a
  #my_hash.each do |key, value|
  #  puts key.to_s + ' : ' + value.sort.to_s
  #end
  #p return_arr
  #return return_arr.max

end
# ------------------------------------------------------------------------------------- #

pickingNumbers([1, 2, 2, 3, 1, 2])

#pickingNumbers([84, 43, 11, 41, 2, 99, 31, 32, 56, 53, 42, 14, 98, 27, 64, 57, 16, 33, 48, 21, 46, 61, 87, 90, 28, 12, 62, 49, 29, 77, 82, 70, 80, 89, 95, 52, 13, 19, 9, 79, 35, 67, 51, 39, 7, 1, 66, 8, 17, 85, 71, 97, 34, 73, 75, 6, 91, 40, 96, 65, 37, 74, 20, 68, 23, 47, 76, 55, 24, 3, 30, 22, 55, 5, 69, 86, 54, 50, 10, 59, 15, 4, 36, 38, 83, 60, 72, 63, 78, 58, 88, 93, 45, 18, 94, 44, 92, 81, 25, 26])
# out 3
