# https://www.pramp.com/challenge/0QmxM9x81lTKO47p43Jr

def meeting_planner(slotsA, slotsB, dur)
  # your code goes here

  start_time_a = []
  start_time_b = []

  same_start_time = []
  
  slotsA.each { |i| start_time_a << i[0] }
  slotsB.each { |i| start_time_b << i[0] }

  #slotsA[0][0]

  start_time_a.each do |i|
    start_time_b.find_index(i).nil? 
  end


  
  #p start_time_a
  #p start_time_b



end
# ------------------------------------------------------------------------------------- #

meeting_planner([[10, 50], [60, 120], [140, 210]], [[0, 15], [60, 70]], 8)
