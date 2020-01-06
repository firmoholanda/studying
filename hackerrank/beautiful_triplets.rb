# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/beautiful-triplets

def beautifulTriplets(d, arr)

  max_start_triple = arr.last - (d*2)

  count = 0
  arr.each do |i|
    if i <= max_start_triple
      #p [i, i+d, i+d*2]
      if ( ([i, i+d, i+d*2] - arr).empty? ) then count +=1 end
    end
  end
  return count

end

puts beautifulTriplets(3, [1, 6, 7, 7, 8, 10, 12, 13, 14, 19])


=begin 
1, 6, 7, 7, 8, 10, 12, 13, 14, 19

1 -> 1, 4, 7
6 -> 6, 9, 12
7 -> 7, 10, 13
7 -> 7, 10, 13
8 -> 8, 11, 14
10-> 10, 13, 16
12-> 12, 15, 18
13-> 13, 16, 19 
=end