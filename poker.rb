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

  h1_count = 0
  h2_count = 0

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
  
  #p h1_value

  h1_high_card = h1_value.max
  h1_one_pair = 0
  h1_tree_of_a_kind = 0

  h1_value.each do |i|
    if (h1_value.count(i) == 2) then h1_one_pair = i end
    if (h1_value.count(i) == 3) then h1_tree_of_a_kind = i end
  end

  h2.each do |i|
    case i.chars[0]
    when "T"
      h2_value << 10
    when "J"
      h2_value << 11
    when "Q"
      h2_value << 12
    when "K"
      h2_value << 13
    when "A"
      h2_value << 14
    else
      h2_value << i.chars[0].to_i
    end
  end
  
  #p h2_value

  h2_high_card = h2_value.max
  h2_one_pair = 0
  h2_tree_of_a_kind = 0

  h2_value.each do |i|
    if (h2_value.count(i) == 2) then h2_one_pair = i end
    if (h2_value.count(i) == 3) then h2_tree_of_a_kind = i end
  end

  #p h1_high_card
  #p h2_high_card

  (h1_high_card > h2_high_card) ? (h1_count +=1) : (h2_count +=1)
  (h1_one_pair > h2_one_pair) ? (h1_count +=2) : (h2_count +=2)
  (h1_tree_of_a_kind > h2_tree_of_a_kind) ? (h1_count +=4) : (h2_count +=4)

  #p h1_count
  #p h2_count

  if (h1_count > h2_count) 
    winner = "Player 1 wins"
  else
    winner = "Player 2 wins"
  end

  #return winner
end
# ------------------------------------------------------------------------------------- #

p determine_winner("2S 4D 2C TC KS", "AS QH TH 9S KH")
