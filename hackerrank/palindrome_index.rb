#https://www.hackerrank.com/challenges/palindrome-index/problem

def palindromeIndex(s)

  if s.reverse == s
    return -1
  else
    my_char = s.chars
    my_char.length.times do |i|
      my_char.delete_at i
      my_str = my_char.join
      if (my_str.reverse == my_str) then (return i) end
      my_char = s.chars
    end
  end

end
# ------------------------------------------------------------------------------------- #


puts palindromeIndex("radars")


#8330