
def solution(a, b)

  ans_a = []
  ans_b = []

  1.upto(a.size-1) do |k|
    if a[0..k-1].sum == a[k..a.size-1].sum then (ans_a << k) end
    if b[0..k-1].sum == b[k..b.size-1].sum then (ans_b << k) end
  end

  (ans_a == ans_b) ? ans_a.size : 0

end

# ------------------------------------------------------------------------------------- #

#solution([4, -1, 0, 3], [-2, 5, 0, 3])
# 2
# index 2 and 3

# k = 1
# 4 and -1, 0, 3

# k = 2
# 4, -1 and 0, 3

# k = 3
# 4, -1, 0 and 3

#solution([2, -2, -3, 3], [0, 0, 4, -4])

#solution([3, 2, 6], [4, 1, 6])
# 0

p solution([1, 4, 2, -2, 5], [7, -2, -2, 2, 5])
# 0

# k = 1
# [1], [4, 2, -2, 5]

# k = 2
# [1, 4], [2, -2, 5]

# k = 3
# [1, 4, 2], [-2, 5]

# k = 4
# [1, 4, 2, -2], [5]