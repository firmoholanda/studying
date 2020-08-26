# https://leetcode.com/problems/isomorphic-strings/

# not finished

# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  
  s_sub = s
  #word_dict.each { |w| ans << s.include?(w) }

  #p ans.all?
  #p (word_dict.include?(s) || s.empty?) && ans.all?

 p s
  word_dict.each { |w| s_sub.sub!(w, "") }
  #p (word_dict.include?(s_sub) || s_sub.empty?)

  #word_dict.each { |w|  p s  }

  p s

  
    
end
# ------------------------------------------------------------------------------------- #

#word_break("leetcode", ["leet", "code"])
# true

#word_break("catsandog", ["cats", "dog", "sand", "and", "cat"])
# false

#word_break("applepenapple", ["apple","pen"])
# true


word_break("cars", ["car","ca","rs"])
# true
