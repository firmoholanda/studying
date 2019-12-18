#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the anagram function below.
def anagram(s)
  
  # if strings are not the same size return -1
  if s.length.even?
    str1 = s[0..((s.length/2)-1)]
    str2 = s[(s.length/2)..s.length]
  else
    return -1
  end

  # sort strings alphabetically
  str1 = str1.chars.sort
  str2 = str2.chars.sort

  # if strings are the same size return 0
  if str1 == str2
    return 0
  else
   puts (str1 - str2).join
  end
  
  puts str1.join
  puts str2.join

end

s = "xtnipeqhxvafqaggqoanvwkmthtfirwhmjrbphlmeluvoa"
#s = "ubulzt"
puts anagram(s)


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

=end