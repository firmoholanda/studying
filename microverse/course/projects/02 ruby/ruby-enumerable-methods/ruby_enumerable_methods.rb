# frozen_string_literal: true

module Enumerable
  # my_each --------------------------------------------------------------------------- #
  def my_each
    return to_enum unless block_given?

    for item in self do
      yield(item)
    end
    self
  end

  # my_each_with_index ---------------------------------------------------------------- #
  def my_each_with_index
    return to_enum unless block_given?

    i = 0
    for item in self do
      yield(item, i)
      i += 1
    end
    self
  end

  # my_select ------------------------------------------------------------------------- #
  def my_select
    return to_enum unless block_given?

    select_arr = []
    for item in self do
      select_arr << item if yield(item)
    end
    select_arr
  end

  # my_all? --------------------------------------------------------------------------- #
  def my_all?(argument = nil)
   if argument
      my_each do |item|
        return false unless argument === item
      end
    elsif block_given?
      my_each do |item|
        return false unless yield(item)
      end
    else
      my_each do |item|
        return false unless item
      end
    end
    true
  end

  #  my_any? -------------------------------------------------------------------------- #
  def my_any?(argument = nil)
    if argument
      my_each do |item|
        return true if argument === item
      end
    elsif block_given?
      my_each do |item|
        return true if yield(item)
      end
    else
      my_each do |item|
        return true if item
      end
    end
    false
  end

  # my_none? -------------------------------------------------------------------------- #
  def my_none?(argument = nil, &block)
    !my_any?(argument, &block)
  end

  # my_count -------------------------------------------------------------------------- #
  def my_count(argument = nil)
    counter = 0
    if !argument.nil?
      my_each do |i|
        counter += 1 if i == argument
      end
    elsif block_given?
      my_each do |i|
        counter += 1 if yield(i)
      end
    else
      counter = length
    end
    counter
  end

  # my_map ---------------------------------------------------------------------------- #
  def my_map(argument = nil)
    i = 0
    arr = []
    while i < size
      if argument
        arr << argument.call(self[i])
      elsif block_given?
        arr << yield(self[i])
      else
        return to_enum
      end
      i += 1
    end
    arr
  end

  # my_inject ------------------------------------------------------------------------- #
  def my_inject(*init)
    result = nil
    if block_given?
      arr = dup.to_a
      result = init[0].nil? ? arr[0] : init[0]
      arr.shift if init[0].nil?
      arr.my_each do |i|
        result = yield(result, i)
      end
    elsif !block_given?
      arr = dup.to_a
      if init[1].nil?
        sym = init[0]
        result = arr[0]
        arr[1..-1].my_each do |i|
          result = result.send(sym, i)
        end
      elsif !init[1].nil?
        sym = init[1]
        result = init[0]
        arr.my_each do |i|
          result = result.send(sym, i)
        end
      end
    end
    result
  end
end

def multiply_els(list)
  list.my_inject(1) { |product, item| product * item }
end
