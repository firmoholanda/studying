# https://leetcode.com/problems/happy-number/

# @param {Integer} n
# @return {Boolean}
def is_happy(n)

  # convert to array of int
  n_arr = n.to_s.split('').map(&:to_i)

  # sum square of each integer
  sum_square = n_arr.map{|x| x**2}.inject(0, &:+)
  p sum_square

  #sum_square != 1 ? is_happy(sum_square) : true

  while sum_square != 1
    is_happy(sum_square)
    count += 1
  end

end

# ------------------------------------------------------------------------------------- #

p is_happy(19)
# true