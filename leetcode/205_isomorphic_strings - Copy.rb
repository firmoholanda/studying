# https://leetcode.com/problems/isomorphic-strings/

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  
  t_arr = []

  # historigram hash for uniqueness
  s_hash = s.chars.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
  t_hash = t.chars.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}

  # maped hash to create new string
  st_hash = Hash[s.chars.zip(t.chars)]

  # new string from st_hash
  s.each_char { |c| t_arr << st_hash.fetch(c) }

  # compare new string with t string and if hashs size are the same
  t_arr == t.chars && (s_hash.size == t_hash.size)
    
end
# ------------------------------------------------------------------------------------- #

is_isomorphic("egg", "add")
# true

#is_isomorphic("foo", "bar")
# false

#is_isomorphic("paper", "title")
# true

#is_isomorphic("aba", "baa")
# false

#is_isomorphic("ab", "aa")
# false
