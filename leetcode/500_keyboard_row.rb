# https://leetcode.com/problems/keyboard-row/

# @param {String[]} words
# @return {String[]}

def find_words(words)
  
  ans_arr = []

  row01 = "qwertyuiop"
  row02 = "asdfghjkl"
  row03 = "zxcvbnm"

  words.each do |i|
    row01_include = []
    row02_include = []
    row03_include = []

    i.chars.each do |i|
      row01_include << (row01.include? i.downcase)
      row02_include << (row02.include? i.downcase)
      row03_include << (row03.include? i.downcase)
    end

    if (row01_include.all?) || (row02_include.all?) || (row03_include.all?)
      ans_arr << i
     end
  end

  return ans_arr
  
end
# ------------------------------------------------------------------------------------- #

find_words(["Hello", "Alaska", "Dad", "Peace"])
# ["Alaska", "Dad"]
