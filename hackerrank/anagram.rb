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
  str1 = str1.chars.sort.join
  str2 = str2.chars.sort.join

  # if strings are the same size return 0
  if str1 == str2
    return 0
  else
    total_change = 0
    (0...str1.length).each do |c|
      if str1[c] == str2[c]
        str2[c] = ""
      else
        total_change +=1
      end
    end
    
  end
  
  puts str1
  puts str2
  return total_change

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