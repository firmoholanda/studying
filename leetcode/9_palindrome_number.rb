# https://leetcode.com/problems/palindrome-number/

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)

  my_str = x.to_s
  p my_str == my_str.reverse
    
end
# ------------------------------------------------------------------------------------- #

is_palindrome(-121)

is_palindrome(10)
