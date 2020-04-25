=begin
  
2, 3, 4, 5, 6, 7, 8, 9, 10 t, 11 j, 12 q, 13 k, 14 a

s - spade
h - heart
d - diamond
c - club

hight_card
one_pair
two_pairs
tree_of_a_kind
straight
flush
full_house
four_of_a_kind
straight_flush
royal_flush
  
=end

# ------------------------------------------------------------------------------------- #

def determine_winner(hand1, hand2)
  winner = 0

  h1 = hand1.split(" ")
  h2 = hand2.split(" ")

  h1_value = []
  h2_value = []

  h1.each do |i|
    case i.chars[0]
    when "T"
      h1_value << 10
    when "J"
      h1_value << 11
    when "Q"
      h1_value << 12
    when "K"
      h1_value << 13
    when "A"
      h1_value << 14
    else
      h1_value << i.chars[0].to_i
    end
  end
  
  p h1_value
  
  #h1_hash = h1_value.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
  #p h1_hash

  high_card = h1_value.max
  one_pair = 0
  #two_pairs = 0
  tree_of_a_kind = 0
  #straight
  #flush
  #full_house
  #four_of_a_kind
  #straight_flush
  #royal_flush
  
  h1_value.each do |i|
    if (h1_value.count(i) == 2) then one_pair = i end
    if (h1_value.count(i) == 3) then tree_of_a_kind = i end
  end
  
  #p h1_hash.count

  p high_card
  p one_pair
  #p two_pairs
  p tree_of_a_kind


  #return winner
end
# ------------------------------------------------------------------------------------- #

determine_winner("2S 4D 2C TC KS", "AS QH TH 9S KH")

