# https://leetcode.com/problems/longest-uncommon-subsequence-i/

# @param {String} a
# @param {String} b
# @return {Integer}
def find_lu_slength(a, b)

  if a === b then (return -1) end
  (a.size > b.size) ? (subsequence = a.sub(b, '')) : (subsequence = b.sub(a, ''))
  subsequence.size
  
end
# ------------------------------------------------------------------------------------- #

p find_lu_slength("aba", "cdc")
# 3

p find_lu_slength("aaa", "bbb")
# 3

p find_lu_slength("aaa", "aaa")
# -1

p find_lu_slength("aefeaf", "a")
# 6
