#link
#!/bin/ruby

def findMedian(arr)

  arr.sort!
  arr[(arr.size-1)/2]

end
# ------------------------------------------------------------------------------------- #

p findMedian([0, 1, 2, 4, 6, 5, 3])
