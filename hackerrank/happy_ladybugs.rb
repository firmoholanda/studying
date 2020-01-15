#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/happy-ladybugs

def happyLadybugs(b)

  char_in_b = Hash.new(0)
  char_in_b = b.each_char.reduce(char_in_b) { |h, c| h[c] += 1; h}

  #char_in_b.delete("_")

  p char_in_b

  #p b.chars.sort.join

  char_in_b.each do |key, value|
    puts key
    puts value
  end

  #char_in_b.values.all? { |i| i >= 2 } ? (puts "YES") : (puts "NO")

end
# ------------------------------------------------------------------------------------- #

#happyLadybugs("RBY_YBR")
happyLadybugs("AABCBC")
