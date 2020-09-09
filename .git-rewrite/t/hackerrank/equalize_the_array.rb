#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/equality-in-a-array

def equalizeArray(arr)
  uniq_arr = arr.uniq{|i| i}
  hist_hash = arr.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}

  final_arr = []
  uniq_arr.each do |i|
    other_hash = hist_hash.select {|k,v| k != i}
    final_arr.push( other_hash.inject(0) { |sum, item| sum += item[1] } )
  end

  return final_arr.min

end

puts equalizeArray([1, 2, 3, 1, 2, 3, 3, 3])