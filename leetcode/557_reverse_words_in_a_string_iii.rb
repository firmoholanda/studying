# https://leetcode.com/problems/reverse-words-in-a-string-iii/

# @param {String} s
# @return {String}
def reverse_words(s)
  
  s.split(" ").map { |w| w.reverse }.join(" ")

end
# ------------------------------------------------------------------------------------- #

p reverse_words("Let's take LeetCode contest")
