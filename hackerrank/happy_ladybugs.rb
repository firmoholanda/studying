#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/happy-ladybugs

def happyLadybugs(b)

  # if no spaces and ladybug occures only once
  b.chars.each do |i|
    if (i != "_") && (b.count(i) == 1) then (return "NO") end
  end

  # if no spaces
  if (b.count("_") == 0)
    1.upto(b.size) do |i|
      if (b[i-1] != b[i] && b[i+1] != b[i]) then (return "NO") end
    end
  end

  return "YES"

end
# ------------------------------------------------------------------------------------- #

p happyLadybugs("RBY_YBR")
#happyLadybugs("X_Y__X")
#happyLadybugs("B_BRBR")

#happyLadybugs("YYR_B_BR")

#happyLadybugs("__")
#happyLadybugs("AABCBC")
