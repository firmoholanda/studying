#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/cavity-map

def cavityMap(grid)

  inner_grid = []
  cavity_grid = grid

  # get inner grid, not using the border
  grid.each_with_index do |row, row_i|
    row.each_with_index do |col, col_i|
      if ( (row_i != 0) && (row_i !=(grid.length-1)) ) && ( (col_i != 0) && (col_i !=(grid.length-1)) )
        inner_grid.push(grid[row_i][col_i])
      end
    end
  end

  # replace cavity with X
  cavity_grid.each_with_index do |row, row_i|
    row.each_with_index do |col, col_i|
      if (cavity_grid[row_i][col_i] == inner_grid.max) then (cavity_grid[row_i][col_i]="X") end
    end
  end

  #cavity_grid = grid.map { |i| (i == inner_grid.max) ? (i="X") : i }

  p inner_grid.max
  p cavity_grid

end
# ------------------------------------------------------------------------------------- #

grid =  [ [1, 1, 1, 2],
          [1, 9, 1, 2],
          [1, 8, 9, 2] ]

cavityMap(grid)


#  if(grid[i][j]>grid[i+1][j])
#  if(grid[i][j]>grid[i-1][j])
#  if(grid[i][j]>grid[i][j+1])
#  if(grid[i][j]>grid[i][j-1])
#      grid2[i][j]='X';
