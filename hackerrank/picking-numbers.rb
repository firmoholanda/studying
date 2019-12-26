#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/picking-numbers

def pickingNumbers(a)
  
  my_arr = [[]]
  uniq_arr = a.uniq

  
  
  #a.product(uniq_arr).map { |x, y| my_arr.push([x, y]) if (x-y).abs < 1}
  #p uniq_arr.product(a)

  uniq_arr.length.times do |i|
    a.length.times do |j|
      if  (uniq_arr[i] - a[j]).abs <= 1 
        my_arr[i][j].push("k")
      end
    end
  end

  #p my_arr

end

pickingNumbers([1, 1, 2, 2, 4, 4, 5, 5])
