
def solution(a)
  
  my_hash = a.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
  
  ans = []
  my_hash.each do |k, val| 
    if (k == val) then (ans << k) end
  end

  ans.max.nil? ? 0 : ans.max

end

# ------------------------------------------------------------------------------------- #

p solution([3, 8, 2, 3, 3, 2])
# 5

p solution([7, 1, 2, 8, 2])
# 4

p solution([3, 1, 4, 1, 5])
# 0

p solution([5, 5, 5, 5, 5])
# 0
