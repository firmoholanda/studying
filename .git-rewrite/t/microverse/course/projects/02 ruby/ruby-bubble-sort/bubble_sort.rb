# frozen_string_literal: true

def bubble_sort_by(array)
  n = array.length
  loop do
    new_n = 0
    (1..n - 1).each do |i|
      result = yield(array[i - 1], array[i])
      if result.positive?
        array[i - 1], array[i] = array[i], array[i - 1]
        new_n = i
      end
    end
    n = new_n
    break if n <= 1
  end
  array
end

def bubble_sort(array)
  bubble_sort_by(array) { |left, right| left - right }
end
