# https://leetcode.com/problems/repeated-substring-pattern/

# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)

  sub_str = []
  s.each_char.with_index { |c, i| sub_str << s.split(s[0..i]) }

  sub_str.pop
  sub_str.any?{ |e| e.empty? }
  
end
# ------------------------------------------------------------------------------------- #

p repeated_substring_pattern("abab")
# true

p repeated_substring_pattern("aba")
# false

p repeated_substring_pattern("abcabcabcabc")
# true
