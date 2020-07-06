# https://leetcode.com/problems/word-pattern/

# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)

  return_arr = []

  p_arr = pattern.chars
  str_arr = str.split(" ")

  my_hash = Hash[p_arr.zip str_arr]

  if (my_hash.values.uniq.length != my_hash.values.length) 
    return false
  else
    p_arr.each.with_index do |i, index|
      return_arr << my_hash[i] == str_arr[index]
    end
  end
  
  return_arr == str_arr
    
end
# ------------------------------------------------------------------------------------- #

#word_pattern("abba", "dog cat cat dog")
# true

#word_pattern("abba", "dog cat cat fish")
# false

#word_pattern("aaaa", "dog cat cat dog")
# false

p word_pattern("abba", "dog dog dog dog")
# false