# https://leetcode.com/problems/number-of-islands/
# https://www.youtube.com/watch?v=o8S2bO3pmO4

# not finished

# @param {Character[]} chars
# @return {Integer}
def compress(chars)

  #p chars.tally.to_a.flatten.map(&:to_s)

  
  ans = []
  my_hash = chars.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}

  my_hash.each do |k, v|
    ans << k
    v.to_s.chars.each {|i| ans << i}  if v != 1
  end

  return ans

end

# ------------------------------------------------------------------------------------- #

#p compress(["a","a","b","b","c","c","c"])
# 6
# ["a","2","b","2","c","3"]

#p compress(["a","b","b","b","b","b","b","b","b","b","b","b","b"])
# 4
# ["a","b","1","2"]

p compress(["a","a","a","b","b","a","a"])
# 4
# ["a","3","b","2","a","2"]