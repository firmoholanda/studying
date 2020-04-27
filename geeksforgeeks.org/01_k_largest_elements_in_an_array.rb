# https://www.geeksforgeeks.org/k-largestor-smallest-elements-in-an-array/

def k_largest(arr, k)
  p arr.sort[arr.size-k..arr.size-1]
end

# ------------------------------------------------------------------------------------- #

k_largest([1, 23, 12, 9, 30, 2, 50], 3)
# 50, 30, 23
