#https://www.hackerrank.com/challenges/palindrome-index/problem

def palindromeIndex(s)

  if s.reverse == s
    return -1
  else
    ((s.length+1)/2).times do |i|
      if s[i] != s[s.length-i-1]
        if (s[0..i]+s[i+1..s.length]).reverse == s[0..i]+s[i+1..s.length]
          return i
        else
          return s.length-i-1
        end
      end
    end
  end

end
# ------------------------------------------------------------------------------------- #

puts palindromeIndex("baa")

#8330