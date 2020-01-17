#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/happy-ladybugs

def happyLadybugs(b)

  # if have space, sort
  if b.chars.any?("_")   
    arr = b.chars.sort
    arr.delete("_")
  else
    arr = b.chars
  end

  while (arr.length > 1) && (arr[0] == arr[1])
    if arr.count(arr[0]) > 1
      adjacent_equal = true
      arr.shift(arr.count(arr[0]))
    end
  end

  if (arr.length == 1) || (arr[0] != arr[1]) then (adjacent_equal = false) end

  adjacent_equal ? (return "YES") : (return "NO")

end
# ------------------------------------------------------------------------------------- #

p happyLadybugs("RBY_YBR")
#happyLadybugs("X_Y__X")
#happyLadybugs("B_BRBR")

#happyLadybugs("YYR_B_BR")

#happyLadybugs("__")
#happyLadybugs("AABCBC")
