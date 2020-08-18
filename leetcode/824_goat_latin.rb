# https://leetcode.com/problems/rotate-array/

# @param {String} s
# @return {String}
def to_goat_latin(s)

  ans = []
  ans2 = []
  words = s.split(" ")

  # create goat language
  words.each do |w|
    ans << w + 'ma' if %w(a e i o u A E I O U).include?(w[0])
    ans << w[1..w.size-1] + w[0] + 'ma' unless %w(a e i o u A E I O U).include?(w[0])
  end

  # add a to the end
  ans.each_with_index {|aw, index| ans2 << aw + "a"*(index+1) }

  ans2.join(" ")
    
end
# ------------------------------------------------------------------------------------- #

to_goat_latin("I speak Goat Latin")
# "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
