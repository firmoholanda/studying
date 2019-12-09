#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram
#!/bin/ruby

require 'json'
require 'stringio'

def isAnagram(str1, str2)
  return str1.chars.sort.join == str2.chars.sort.join
end

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
    #str1.split('').each_with_index do |item1, i1|
    #  str2.split('').each_with_index do |item2, i2|
    #    srtAnagram = str2[i1] + str1[]
    #    if isAnagram(srtAnagram, str2)
    #      puts i
    #    end
    #  end
    #end
 
    #return srtAnagram
    return str1 + " " + str2
  end

end

s = "xaxbbbxx"

puts anagram(s)
#puts isAnagram("xaxb", "bbxx")