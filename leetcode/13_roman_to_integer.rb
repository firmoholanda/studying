# https://leetcode.com/problems/roman-to-integer/

# @param {String} s
# @return {Integer}
def roman_to_int(s)

  my_int_arr = []

  s.split('').each do |c|
    curr_int = 0

    case c
    when "I" then curr_int = 1
    when "V" then curr_int = 5
    when "X" then curr_int = 10
    when "L" then curr_int = 50
    when "C" then curr_int = 100
    when "D" then curr_int = 500
    when "M" then curr_int = 1000
    else p "invalid imput"
    end

    my_int_arr.push(curr_int)
  end
    
  p my_int_arr
  p my_int_arr.sum
end
# ------------------------------------------------------------------------------------- #

#roman_to_int("III")

roman_to_int("IV")
