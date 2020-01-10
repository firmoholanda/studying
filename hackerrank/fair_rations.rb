#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/fair-rations

def fairRations(loaves)

  count = 0

  if loaves.length <= 2
    return "NO"
  else
    until loaves.all? { |l| l.even? }
      loaves.reverse_each.with_index do |l, i|
        p loaves
        if l.odd?
          loaves[loaves.length-i] += 1
          loaves[loaves.length-i-1] += 1
          count +=2
        end
      end
    end
    return count
  end

end
# ------------------------------------------------------------------------------------- #

puts fairRations([2, 3, 4, 5, 6])