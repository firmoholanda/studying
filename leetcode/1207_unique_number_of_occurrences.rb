# https://leetcode.com/problems/unique-number-of-occurrences/

# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)

  my_hash = arr.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
  my_hash.values.size == my_hash.values.uniq.size

end
# ------------------------------------------------------------------------------------- #

p unique_occurrences([1,2,2,1,1,3])
# true

p unique_occurrences([1,2])
# false

p unique_occurrences([-3,0,1,-3,1,1,1,-3,10,0])
# true
