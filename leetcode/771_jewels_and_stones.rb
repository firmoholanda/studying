# https://leetcode.com/problems/jewels-and-stones/

# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)

  count = 0
  j.chars.each do |j_char|
    s.chars.each {|c|  count += 1 if (c == j_char)}
  end
  count

  
  #s.chars.tally.each {|k, v| p v if j.chars.include?(k)}.reduce(:+)  



end

# ------------------------------------------------------------------------------------- #
num_jewels_in_stones("aA", "aAAbbbb")
# 3