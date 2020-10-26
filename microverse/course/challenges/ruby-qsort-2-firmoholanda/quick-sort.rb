# recursive implementation of quicksort
def quicksort(array, lower = 0, higher = nil)
  # return empty array if imput is empty
  return [] if array.empty?

  # if higher not set. assin to last item in array
  if higher == nil
    higher = array.length - 1
  end

  # recursively call main function
  if lower < higher
    p_index = partition_using_sub_arrays(array, lower, higher)
    quicksort(array, lower, p_index - 1)
    quicksort(array, p_index + 1, higher)
  end

  return array
end

# while item on the left is larger than item in the right, swap them
def partition_using_sub_arrays(array, lower, higher)
  pivot = array[higher]
  p_index = lower
  
  i = lower
  while i < higher
    if array[i] <= pivot
      swap(array, i, p_index)
      p_index += 1
    end
    i += 1
  end
  swap(array, p_index, higher)

  return p_index
end

# swap items in array
def swap (array, first, second)
  original_first = array[first]
  array[first] = array[second]
  array[second] = original_first
end
