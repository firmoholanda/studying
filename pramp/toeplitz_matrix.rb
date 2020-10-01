# https://www.pramp.com/challenge/0QmxM9x81lTKO47p43Jr

def function(mat)

  row_count = mat.size
  col_count = mat[0].size
  arr = []
  
  row_count.times do |r|
    col_count.times do |c|
      arr << mat[r][c]
    end
  end

  (arr.size - (col_count+1)).times do |i|
    p i
    p arr[i] == arr[i+col_count+1]
  end

  
  #p arr
  #p arr[0]
  #p arr[col_count+1]
  
    
end
# ------------------------------------------------------------------------------------- #

function([[1,2,3,4], [5,1,2,3], [6,5,1,2]])
# true

#function([[1,2,3,4], [5,1,9,3], [6,5,1,2]])
# false

mat[0][0] == mat[1][1] == mat[2][2]

mat[0][1] == mat[1][2] == mat[2][3]

mat[0][2] == mat[1][3]
