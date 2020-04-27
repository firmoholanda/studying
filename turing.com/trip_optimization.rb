=begin
  
# Instruction:
""" 
You have a [X]-hour layover in paris and want to book some Trips.
You prefer to book as few Trips as possible to enjoy the last [X]
hours with minimum context switch. How will you arrange your time?
Assuming that there is no time cost for transportation between Trips.
Input:
An array of Trips durations (hours). e.g. [1, 3, 6]
Total remaining hours, e.g. 15
Output:
Minimum number of purchase. e.g. 3 (6 + 6 + 3 = 15)
If there is no way to fill total remaining hours, return -1.
Input Sample:
1 3 6
15
Output:
3
"""
  
=end

# ------------------------------------------------------------------------------------- #

def minPurchases(trip_durations, total_hours)
  
  trips = []
  my_td = trip_durations

  i = total_hours
  while i > 0
    if (i - my_td.max) < 0 then my_td.delete(my_td.max) end
    trips << i - my_td.max
    i -= my_td.max
  end

  p trips
  p trips.size
  
end
# ------------------------------------------------------------------------------------- #

#minPurchases([1, 3, 6], 15)
#3
#6+6+3

minPurchases([1, 3, 6], 8)
