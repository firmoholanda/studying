#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/game-of-thrones


def insertionSort1(arr)

  (arr.size-1).downto(1) do |i|
    last_val = arr[i]
    j = i
    while (j > 0) && (arr[j-1] > last_val)
      arr[j] = arr[j-1]
      j -= 1
      puts arr.join(" ")
    end
    arr[j] = last_val
  end
  puts arr.join(" ")
  
end
# ------------------------------------------------------------------------------------- #

insertionSort1([1, 2, 4, 5, 3])
