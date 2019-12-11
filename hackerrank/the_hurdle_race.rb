#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/the-hurdle-race

def hurdleRace(k, height)
  k > height.max ? 0 : height.max - k
end

k = 7
height = [2 5 4 5 2]