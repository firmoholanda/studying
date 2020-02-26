#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the anagram function below.
def anagram(s)
  
  # if strings are not the same size return -1
  if s.length.even?
    str1 = s.slice(0..(s.length / 2 - 1))
    str2 = s.slice((s.length / 2)..s.length)
  else
    return -1
  end
  
  # if strings are the same return 0
  if str1 == str2
    return 0
  else
    for i in 0..str1.length - 1 do
      str2.sub!(str1[i], "") if str2.include?(str1[i])
    end
  end
  
  return str2.length

end
# ------------------------------------------------------------------------------------- #

puts anagram("asdfjoieufoa")


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