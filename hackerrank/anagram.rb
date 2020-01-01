#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the anagram function below.
def anagram(s)
  
  # if strings are not the same size return -1
  if s.length.even?
    str1 = s.slice(0..(s.length/2 - 1))
    str2 = s.slice((s.length / 2)..s.length)
  else
    return -1
  end

  # sort strings alphabetically
  str1 = str1.chars.sort
  str2 = str2.chars.sort

  count = 0
  # if strings are the same size return 0
  if str1 == str2
    return 0
  else
    hash = {}
    str1.each_with_index do |ch, index|
      hash["#{ch}_#{index}"] = str2.include?(ch)
    end
   #puts (str1 - str2).join.length
  end
  
  #puts str1.join
  #puts str2.join
  #puts count

  #return hash.values.find_all {|value| !value}.count
  #p hash
  return hash.values.find_all {|value| !value}.count

end
# ------------------------------------------------------------------------------------- #

puts anagram("xtnipeqhxvafqaggqoanvwkmthtfirwhmjrbphlmeluvoa")


=begin

drngbjuuhmwqwxrinxccsqxkpwygwcdbtriwaesjsobrntzaqbe
-1

ubulzt
3

vxxzsqjqsnibgydzlyynqcrayvwjurfsqfrivayopgrxewwruvemzy
13

xtnipeqhxvafqaggqoanvwkmthtfirwhmjrbphlmeluvoa
13

gqdvlchavotcykafyjzbbgmnlajiqlnwctrnvznspiwquxxsiwuldizqkkaawpyyisnftdzklwagv
-1 


asdfjoieufoa
3

fdhlvosfpafhalll
5

mvdalvkiopaufl
5

=end