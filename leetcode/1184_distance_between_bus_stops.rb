# https://leetcode.com/problems/distance-between-bus-stops/

# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)

# not solved
   
 #[ (distance[start...destination]).sum, (distance - distance[start...destination]).sum ].min
  
p distance[start...destination]
p distance - distance[start...destination]

end
# ------------------------------------------------------------------------------------- #

#distance_between_bus_stops([1,2,3,4], 0, 1)
# 1

#distance_between_bus_stops([1,2,3,4], 0, 2)
# 3

#distance_between_bus_stops([1,2,3,4], 0, 3)
# 4

distance_between_bus_stops([7, 6, 3, 0, 3], 0, 4)
# 4