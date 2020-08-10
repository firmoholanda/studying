# https://leetcode.com/problems/can-place-flowers/

# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)


  ans = flowerbed.map(&:to_s).join.split("1").reject { |i| i.empty? }

  p ans

  ans.map(&:length).any? { |i| (i == (n*2)+1) || (i == (n*2)) }

    
end
# ------------------------------------------------------------------------------------- #

can_place_flowers([1,0,0,0,1,0,0], 1)
# true

#p can_place_flowers([1,0,0,0,1], 2)
# false

#p can_place_flowers([0,0,1,0,1], 1)
# false

#p can_place_flowers([1,0,0,0,0,1], 2)
# false