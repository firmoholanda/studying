#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/fair-rations

def fairRations(loaves)

  count = 0

  until loaves.all? { |l| l.even? }
    (0...loaves.length).reverse_each do |i|     #loop from the back
      if loaves[i].odd?
        loaves[i] += 1
        loaves[i-1] += 1
        count +=2
      end
    end
    #p loaves
    if count > 2000 then (return "NO") end
  end
  
  return count

end
# ------------------------------------------------------------------------------------- #

puts fairRations([4, 5, 6, 7])
