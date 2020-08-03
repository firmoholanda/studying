# https://leetcode.com/problems/island-perim/

# @param {Integer[][]} grid
# @return {Integer}
def island_perim(grid)

  return 0 if grid.empty?
  
  col = grid.size
  row = grid[0].size
  ans = 0

  (0...col).each do |c|
    (0...row).each do |r|
      if grid[c][r] == 1
        perim = 4
        
        perim -= 1 if (c-1 >= 0)  && (grid[c-1][r] == 1)      # top
        perim -= 1 if (r+1 < row) && (grid[c][r+1] == 1)      # right
        perim -= 1 if (c+1 < col) && (grid[c+1][r] == 1)      # bottom        
        perim -= 1 if (r-1 >= 0)  && (grid[c][r-1] == 1)      # left

        ans += perim
      end
    end
  end
  
  return ans
    
end
# ------------------------------------------------------------------------------------- #

p island_perim([[0,1,0,0],
                [1,1,1,0],
                [0,1,0,0],
                [1,1,0,0]])
# 16
