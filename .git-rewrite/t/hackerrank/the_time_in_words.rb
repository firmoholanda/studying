#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/the-time-in-words

def timeInWords(h, m)

  nums_arr = [  "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", 
                "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", 
                "seventeen", "eighteen", "nineteen", "twenty", "twenty one", "twenty two", 
                "twenty three", "twenty four", "twenty five", "twenty six", "twenty seven", 
                "twenty eight", "twenty nine"
              ]

  case m
    when 0
      puts nums_arr[h] + " o' clock"
    when 1
      puts "one minute past " + nums_arr[h]
    when 59
      puts "one minute to " + nums_arr[(h % 12) + 1]
    when 15
      puts "quarter past " + nums_arr[h]
    when 30
      puts "half past " + nums_arr[h]
    when 45
      puts "quarter to " + nums_arr[(h % 12) + 1]
    when 0..30
      puts nums_arr[m] + " minutes past " + nums_arr[h]
    when 31..59
      puts nums_arr[60 - m] + " minutes to " + nums_arr[(h % 12) + 1]
    else
      puts "invalid hour"
  end

end

# ------------------------------------------------------------------------------------- #

timeInWords(5, 33)
