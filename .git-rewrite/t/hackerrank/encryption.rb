#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/encryption

def encryption(s)

  row = Math.sqrt(s.length).floor
  col = Math.sqrt(s.length).ceil

  if (row * col) < s.length
    row += 1
  end

  i=0
  new_str = []
  row.times do
    col.times do
      new_str.push(s[i])
      i += 1
    end
    new_str.push(" ")
  end

  new_str = new_str.join.split


  enc_str = []
  col.times do |c|
    row.times do |r|
      enc_str.push(new_str[r].chars[c])
    end
    enc_str.push(" ")
  end

  return enc_str.join

end

puts encryption("haveaniceday")