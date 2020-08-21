# https://leetcode.com/problems/rotate-string/

# @param {String} a
# @param {String} b
# @return {Boolean}
def rotate_string(a, b)
   
  #p a.chars -b.chars
   a.remove(" test")

   p a


end
# ------------------------------------------------------------------------------------- #

rotate_string('abcde', 'cdeab')
# true

#rotate_string('abcde', 'abced')
# true