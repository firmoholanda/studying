# https://leetcode.com/problems/combination-sum/

# http://nizhu.github.io/ruby-intro-site/blog/2013/07/28/numbers/

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)

  #comb_arr = []
  #(1..candidates.size).each do |i|
  #  candidates.combination(i).each do |j|
  #    comb_arr << j
  #  end
    #puts candidates.combination(i)
  #end

  #p comb_arr * candidates
  #p comb_arr.zip(candidates).map{|x, y| x * y}

  #comb_arr2 = []
  #candidates.each do |c|
  #  (comb_arr * c).each do |c_item|
      #if c_item.sum == target
  #      comb_arr2 << c_item
      #end
  #  end
  #end

  #p comb_arr2.

  #puts candidates.combination(4).size
  #p comb_arr * 

  puts (1..candidates.size).each {|n| candidates.repeated_permutation(n).map(&:join)}


#  p comb.to_i
    
end
# ------------------------------------------------------------------------------------- #

combination_sum([2,3,6,7], 7)
