#https://www.hackerrank.com/challenges/staircase/problem

def staircase(n)

  # old code
  #for i in 1..n
  #  puts ("#" * i).rjust(n)
  #end

  # refactored code
  (1..n).each { |i| puts ("#" * i).rjust(n) }

end
# ------------------------------------------------------------------------------------- #

 staircase(7)
