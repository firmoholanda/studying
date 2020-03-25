# https://leetcode.com/problems/counting-bits/

# @param {String} s
# @return {String}

def decode_string(s)
  return_str = []
  open_arr = []
  close_arr = []

  s.each_char.with_index do |char, i|
    if char == "[" then open_arr << i end
    if char == "]" then close_arr << i end    
  end

  p open_arr
  p close_arr

  open_arr.size.times.with_index do |i|
    return_str << s[(open_arr[i] + 1)..(close_arr[i] - 1)] * s[open_arr[i] - 1].to_i  
  end

  p return_str.join
  

end
# ------------------------------------------------------------------------------------- #

decode_string("3[a]2[bc]")

decode_string("3[a2[c]]")

#decode_string("2[abc]3[cd]ef")