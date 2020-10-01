# https://www.pramp.com/challenge/0QmxM9x81lTKO47p43Jr

def function(mat)

  arr = []
  is_sub_set = []
  row_count = mat.size
    
  row_count.times do |r|
    arr << mat[r].drop(r)   
  end

  (arr.size-1).downto(1) do |i|
    is_sub_set << (arr[2] - arr[1]).empty?
  end

  p is_sub_set.all?

end
# ------------------------------------------------------------------------------------- #

function([[1,2,3,4], [5,1,2,3], [6,5,1,2]])
# true

function([[1,2,3,4], [5,1,9,3], [6,5,1,2]])
# false
