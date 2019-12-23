#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/encryption

def encryption(s)

  row = Math.sqrt(s.length).floor
  col = Math.sqrt(s.length).ceil

  if (row * col) < s.length
    row += 1
  end 

  i=0
  new_str = []
  (0...row).each do
    (0...col).each do 
      new_str.push(s[i])
      i += 1
    end
    new_str.push("\n")
  end

  
  j=0
  new_str = []
  (0...col).each do
      new_str.push(s[j])
      j += 1
    (0...row).each do 

    end
    new_str.push("\n")
  end

  return new_str.join

end

puts encryption("feedthedog")