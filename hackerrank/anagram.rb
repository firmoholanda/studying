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
    (0...str1.length).each { |c| total_change +=1 unless str1[c] == str2[c] }
    return total_change
  end

end

s = "mnop"

puts anagram(s)
