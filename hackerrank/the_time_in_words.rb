#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/the-time-in-words

def timeInWords(h, m)

case h
when 1
  hour = "one"
when 2
  hour = "two"
when 3
  hour = "three"
when 4
  hour = "four"
when 5
  hour = "five"
when 6
  hour = "six"
when 7
  hour = "seven"
when 8
  hour = "eight"
when 9
  hour = "nine"
when 10
  hour = "ten"
when 11
  hour = "eleven"
when 12
  hour = "twelve"
else
  puts "invalid hour"
end

case m
when 0
  minute = "o' clock"
when 1
  minute = "one minute past"
when 2
  minute = "two minutes past"
when 3
  minute = "three minutes past"
when 4
  minute = "four minutes past"
when 5
  minute = "five minutes past"
when 6
  minute = "six minutes past"
when 7
  minute = "seven minutes past"
when 8
  minute = "eight minutes past"
when 9
  minute = "nine minutes past"
when 10
  minute = "ten minutes past"
when 11
  minute = "eleven minutes past"
when 12
  minute = "twelve minutes past"
when 13
  minute = "thirteen minutes past"
when 14
  minute = "fourteen minutes past"
when 15
  minute = "quarter past"
when 16
  minute = "sixteen minutes past"
when 17
  minute = "seventeen minutes past"
when 18
  minute = "eighteen minutes past"
when 19
  minute = "nineteen minutes past"
when 20
  minute = "twenty minutes past"
else
  puts "invalid minute"
end

puts minute + " " +  hour 

end
# ------------------------------------------------------------------------------------- #

timeInWords(5, 13)
