#https://www.hackerrank.com/challenges/palindrome-index/problem

def isPalindrome?(s)
  s.reverse == s ? true : false
end

def palindromeIndex(s)
  
  if isPalindrome?(s)
    return -1
  else
    s.each_char do |c|
      s.slice
    end
  end

  puts s.reverse

end
# ------------------------------------------------------------------------------------- #

puts palindromeIndex("aaab")