#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/game-of-thrones


def insertionSort1(arr)

  i = arr.size-1
  val = arr[i]

  while val < arr[i-1]
    arr[i] = arr[i-1]
    p arr
    i -= 1
  
end
# ------------------------------------------------------------------------------------- #

insertionSort1([1, 2, 4, 5, 3])

    #j = i
      #while((j>0) && (arr[j-1] > arr[j]))
      #    arr[j], arr[j-1] = arr[j-1], arr[j]
      #    j -= 1
      #    p arr 
      #end