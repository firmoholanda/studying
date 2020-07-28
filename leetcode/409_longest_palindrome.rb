# https://leetcode.com/problems/longest-palindrome/


# @param {String} s
# @return {Integer}
def longest_palindrome(s)

  if s.empty? then (return 0) end

  count = 0
  my_hash = s.chars.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}

  p my_hash
  
  odd_hash = my_hash.select {|k, v| v.odd?}
  even_hash = my_hash.select {|k, v| v.even?}
  
  if odd_hash.size > 0
      count += odd_hash.values.max
  end
  
  if even_hash.size > 0
    count += even_hash.values.inject(:+)
  end

  return count
    
end

# ------------------------------------------------------------------------------------- #

#longest_palindrome("abccccdd")
# 7

p longest_palindrome("abcbe")
# 3
