def minPurchases(trip_durations, total_hours)
  min_purchases = -1

  #p trip_durations.permutation.to_a.uniq

  #trip_durations.size.downto(2) do |i|
  #  p trip_durations.combination(i).to_a
  #end

  #trip_durations.permutation.to_a.size.times do |i|
    #p i
  #end

  #p trip_durations.combination(3).to_a

  

  arr = []
  my_td = trip_durations
  i = total_hours
  while i >= 0 do
    if (i - my_td.max) < 0
      my_td.pop
      arr << my_td.max      
    else
      arr << my_td.max
      i -= my_td.max
    end
  end
  #min_purchases = arr.size
  #p total_hours - trip_durations.max
    
  return min_purchases
end
# ------------------------------------------------------------------------------------- #

p minPurchases([1, 3, 6], 15)
#3
#6+6+3