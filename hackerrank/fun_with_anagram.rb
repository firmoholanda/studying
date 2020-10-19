#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram
#!/bin/ruby


def fun_with_anagrams(text)

  unique_sorted_chars_word = text.map { |w| w.split("").sort.join }.uniq
  p unique_sorted_chars_word

  text.each do |t|
    #.any?(unique_sorted_chars_word)
    p t.split("").sort.join
  end

  #h = sorted_chars_word.uniq.each_with_index.to_h

  #p h
  
  #text.each_with_index do |t, index|
    #p index
    #if obj[0].split("").sort.join == obj[1].split("").sort.join
    #  text.delete(obj[1])
    #end
  #end
  #p text

  #text.each do |t|
    #p t
    #if obj[0].split("").sort.join == obj[1].split("").sort.join
    #  text.delete(obj[1])
    #end
  #end

end
# ------------------------------------------------------------------------------------- #

fun_with_anagrams(['code', 'doce', 'ecod', 'framer', 'frame'])


#fun_with_anagrams(['code', 'aaagmnrs', 'anagrams', 'doce'])
# aaagmnrs, code

