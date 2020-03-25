# https://www.codewars.com/kata/550498447451fbbd7600041c

def comp(a, b)
  return_arr = []

  a.sort!
  b.sort!

  a_squared = a.map { |num| num * num}
  a_squared.each_with_index { |i, index| i == b[index] ? (return_arr << "true") : (return_arr << "false") }

  return_arr.all?("true")
  
end
# ------------------------------------------------------------------------------------- #

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a, b)
