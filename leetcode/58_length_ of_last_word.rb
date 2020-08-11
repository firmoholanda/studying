# https://leetcode.com/problems/length-of-last-word/

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    
  return 0 if s.split(" ").empty?
  s.split(" ").last.size

end

# ------------------------------------------------------------------------------------- #

#length_of_last_word("Hello World")

p length_of_last_word(" ")