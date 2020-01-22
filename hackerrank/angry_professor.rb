#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/angry-professor

def angryProfessor(k, a)

  a.map { |i| i<=0 }.count(true) >= k ? "NO" : "YES"
  
end
# ------------------------------------------------------------------------------------- #

puts angryProfessor(3, [-1, -3, 4, 2])