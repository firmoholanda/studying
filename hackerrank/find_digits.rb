#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/find-digits

def findDigits(n)

  my_arr_str = n.to_s
  count = 0

  (0...my_arr_str.length).each do |i|
    unless my_arr_str[i].to_i == 0
       count += 1 if n % my_arr_str[i].to_i == 0
    end
  end
  
  return count

end

puts findDigits(12)