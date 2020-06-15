# https://leetcode.com/problems/valid-palindrome/

# not finished

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  if s.empty? then (return true) end
  my_str = s.gsub!(/\W+/, '').downcase
  return my_str == my_str.reverse
end
# ------------------------------------------------------------------------------------- #

p is_palindrome("A man, a plan, a canal: Panama")
#true

p is_palindrome("race a car")
#false

p is_palindrome("")
