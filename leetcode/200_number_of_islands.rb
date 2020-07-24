# https://leetcode.com/problems/number-of-islands/
# https://www.youtube.com/watch?v=o8S2bO3pmO4

# @param {Character[][]} grid
# @return {Integer}

def depth_first_search(grid, i, j)

end

def num_islands(grid)
  
  num_islands = 0
  return 0 if (grid == nil || grid.size == 0)

  (0...grid.size).each do |i|
    #p i
    #p grid[i]
    (0...grid[i].size).each do |j|
      p j
    end
  end  

end
# ------------------------------------------------------------------------------------- #

num_islands([
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
])
