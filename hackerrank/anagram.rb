#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the anagram function below.
def anagram(s)
  
  if s.length.even?
    str1 = s[0..((s.length/2)-1)]
    str2 = s[(s.length/2)..s.length]
  else
    return -1
  end

  if str1.reverse == str2
    return 0
  else
    srtAnagram = ""
    for i in 0..(str1.length-1) do
      #for j in 0..(str1.length-1) do
        srtAnagram += str2[i]
        # = str2[i] + str1[1..((str2.length)-1)]
        
      #end
    end
    return srtAnagram
  end

end

s = "aaabbb"

puts anagram(s)