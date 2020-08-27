# https://leetcode.com/problems/word-break/

# https://www.youtube.com/watch?v=1U4jQusbeJc
# https://observablehq.com/@adg29/leetcode-139-word-break

# not finished

# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
def word_break(s, word_dict)
  
  #s_sub = s
  #word_dict.each { |w| ans << s.include?(w) }

  #p ans.all?
  #p (word_dict.include?(s) || s.empty?) && ans.all?

  #word_dict.each { |w| s_sub.sub!(w, "") }
  #p (word_dict.include?(s_sub) || s_sub.empty?)
  #word_dict.each { |w|  p s  }

  dp = Array.new(s.size+1, false)
  dp[0] = true

  1.upto(s.length) do |j|
    (j - 1).downto(0) do |i|
      if dp[i] && word_dict.include?(s[i...j])
        dp[j] = true
        break
      end
    end
  end
  p dp
  p dp[s.length]
end
    

# ------------------------------------------------------------------------------------- #

#word_break("leetcode", ["leet", "code"])
# true

#word_break("catsandog", ["cats", "dog", "sand", "and", "cat"])
# false

#word_break("applepenapple", ["apple","pen"])
# true

#word_break("cars", ["car","ca","rs"])
# true

word_break("abcdef", ["ab","cd","ef"])
# true