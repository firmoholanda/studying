# https://leetcode.com/problems/robot-return-to-origin/

# @param {String} moves
# @return {Boolean}
def judge_circle(moves)

  #move_hash = moves.chars.inject(Hash.new(0)) { |total, e| total[e] += 1 ; total}
  
  move_hash = moves.chars.tally

  p move_hash
  move_hash["U"] == move_hash["D"] && move_hash["L"] == move_hash["R"]
    
end
# ------------------------------------------------------------------------------------- #

p judge_circle("UD")

