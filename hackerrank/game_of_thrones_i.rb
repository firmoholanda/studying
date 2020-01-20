#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/game-of-thrones

def gameOfThrones(s)

  counts = s.chars.inject(Hash.new(0)) { |h, c| h[c] += 1; h }.values
  p counts
  
  puts (counts.one?(&:odd?) || counts.all?(&:even?) ? "YES" : "NO")

end
# ------------------------------------------------------------------------------------- #

gameOfThrones("aaabbbb")
#gameOfThrones("cdefghmnopqrstuvw")
gameOfThrones("cdcdcdcdeeeef")
#p gameOfThrones("cdefghmnopqrstuvw")