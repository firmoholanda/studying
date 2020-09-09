#lib/calculator.rb

class Calculator

  def add(*args)
    args.each.reduce(:+)
  end

  def multiply(*args)
    args.each.reduce(:*)
  end

  def subtract(*args)
    args.each.reduce(:-)
  end

  def divide(*args)
    args.each.reduce(:/)
  end

end
