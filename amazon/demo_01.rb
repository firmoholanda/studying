
def solution(a)
  
  my_arr = a.uniq.sort.reverse
  if my_arr.all?(&:negative?) then (return 1) end

  if (my_arr[0] - my_arr[1]) > 1
    return my_arr[1] + 1
  else
    return my_arr[0] + 1
  end

end

# ------------------------------------------------------------------------------------- #

p solution([1, 3, 6, 4, 1, 2])
# 5

p solution([1, 2, 3])
# 4

p solution([-1, -3])
# 1
