#https://www.hackerrank.com/challenges/palindrome-index/problem

def isPalindrome?(s)
  s.reverse == s ? true : false
end

def palindromeIndex(s)
  
  if isPalindrome?(s)
    return -1
  else
    my_char = s.chars
    (0...my_char.length).each do |i|
      my_char.delete_at i
      my_str = my_char.join
      if isPalindrome?(my_str) then (return i) end
      my_char = s.chars
    end
  end

end
# ------------------------------------------------------------------------------------- #

puts palindromeIndex("baa")