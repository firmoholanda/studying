# https://leetcode.com/problems/valid-parentheses/

# not finished

# @param {String} s
# @return {Boolean}
def is_valid(s)

  stack = []
  symbols = { '(' => ')', '{' => '}', '[' => ']' }

  s.each_char do |c|
    stack << c if symbols.key?(c)
    return false if (symbols.key(c)) && (symbols.key(c) != stack.pop)
  end
  stack.empty?

end
# ------------------------------------------------------------------------------------- #

#is_valid("()")
#true

#is_valid("{[]}")
#true

#is_valid("()[]{}")
#true

 is_valid("([)]")
#false


