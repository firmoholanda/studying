# https://leetcode.com/problems/shuffle-string/

# @param {String} s
# @param {Integer[]} indices
# @return {String}
def restore_string(s, indices)

  #my_hash = Hash[s.chars.zip indices]
  #ans = []
  #(0..indices.size).each {|i| ans << my_hash.key(i)}
  #p ans
  
  ans = []
  
  my_arr = s.chars.zip indices
  (0...indices.size).each {|i| ans << my_arr.select{|x, y| y == i}.map{|x, y| x}}
  
  p ans.flatten.join

  #p my_arr
  #p my_arr[1][0]

  #p my_arr.select{|x, y| y == 0}
  #p my_arr.select{|x, y| y == 0}.map{|x, y| x}
  #p ans


  

end
# ------------------------------------------------------------------------------------- #

restore_string("codeleet", [4,5,6,7,0,2,1,3])
# "leetcode"

#restore_string("abc", [0,1,2])
# "abc"
