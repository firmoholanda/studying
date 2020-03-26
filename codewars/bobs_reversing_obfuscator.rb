# https://www.codewars.com/kata/559ee79ab98119dd0100001d/train/ruby

def decoder(encoded, marker)
  res = []

  # divide into substrings and separate by index
  sub_strs = encoded.split(marker)
  even_strs, odd_strs = sub_strs.partition.with_index{ |_, i| i.even? }

  # assemble even and not reversed strings
  res << even_strs.join

  # reverse odd string and reverse each char in reversed odd string
  odd_strs.reverse!
  odd_strs.each do |i|
    res << i.reverse    
  end

  p res.join
end
# ------------------------------------------------------------------------------------- #

#decoder("Lor-.tile gnicsipida rutetcesnoc ,tema tis rolod muspi me", "-")

decoder("ab-cd-ef-hj", "-")
# "ab-ef-jh-dc"
# "abefjhdc"