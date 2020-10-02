# https://www.pramp.com/challenge/0QmxM9x81lTKO47p43Jr

def isToeplitz(mat)

  arr = []
  is_sub_set = []
  row_count = mat.size
    
  # create arr droping fists elements
  row_count.times do |r|
    arr << mat[r].drop(r)   
  end

  # check if subset
  (arr.size-1).downto(1) do |i|
    is_sub_set << (arr[2] - arr[1]).empty?
  end

  # check if all true
  p is_sub_set.all?

end
# ------------------------------------------------------------------------------------- #

isToeplitz([[1,2,3,4], [5,1,2,3], [6,5,1,2]])
# true

isToeplitz([[1,2,3,4], [5,1,9,3], [6,5,1,2]])
# false
