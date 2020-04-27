# https://practice.geeksforgeeks.org/problems/pythagorean-triplet/0

def pythagorean_triplet(arr)
  
  ans = 0
  
  arr.each_with_index do |i, index|
    my_arr = arr.reject.with_index { |_el, arr_index| arr_index == index }
    my_arr_comb = my_arr.combination(2).to_a

    my_arr_comb.each do |i|
      if (arr[index]**2) == i.map{|x| x**2}.inject(0, &:+) then (ans += 1) end
    end  
  end

  (ans > 0) ? (p "yes") : (p "no")

end

# ------------------------------------------------------------------------------------- #

pythagorean_triplet([3, 2, 4, 6, 5])
# yes
# a=3, b=4, and c=5
