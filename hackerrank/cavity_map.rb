#https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/cavity-map

def cavityMap(grid)

  #p grid.length

  grid.each_with_index do |row, row_i|
    row.each_with_index do |col, col_i|
      #dont use the border
      if ( (row_i != 0) && (row_i !=(grid.length-1)) ) && ( (col_i != 0) && (col_i !=(grid.length-1)) )
        #p row_i.to_s + " " + col_i.to_s
        p grid[row_i][col_i]
      end
    end
  end

  #p grid[1][1]

end
# ------------------------------------------------------------------------------------- #

grid =  [ [1, 1, 1, 2],
          [1, 9, 1, 2],
          [1, 8, 9, 2],
          [1, 2, 3, 4] ]

cavityMap(grid)
