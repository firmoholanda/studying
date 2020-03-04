# @param {Integer[]} height
# @return {Integer}
def max_area(height)

  area = []
  p_left = 0
  p_right = height.size - 1

  while p_left < p_right
    area << [height[p_left], height[p_right]].min * (p_right - p_left)
    height[p_left] > height[p_right] ? p_right -= 1 : p_left += 1
  end

  return area.max
  
end
# ------------------------------------------------------------------------------------- #

p max_area([1,8,6,2,5,4,8,3,7])
# 49

p max_area([1,3,2,5,25,24,5])
# 24
