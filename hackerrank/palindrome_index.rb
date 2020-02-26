#https://www.hackerrank.com/challenges/palindrome-index/problem

def is_palindrome?(str)
  str == str.reverse
end

def palindromeIndex(s)

  left = 0
  right = s.length - 1

  while left < right && s[left] == s[right] do
    left += 1
    right -= 1
  end

  if left >= right
    return -1
  else
    return is_palindrome?(s[left...right]) ? right : left
  end

end
# ------------------------------------------------------------------------------------- #

puts palindromeIndex("aaab")
