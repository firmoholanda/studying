# https://leetcode.com/problems/most-common-word/

# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)

  p p_arr = paragraph.split(/\W/).delete_if(&:empty?).map(&:downcase).delete_if {|i| banned.include?(i) }
  p my_hash = p_arr.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
  p my_hash.key(my_hash.values.max)

end

# ------------------------------------------------------------------------------------- #

most_common_word("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"])
# "ball"