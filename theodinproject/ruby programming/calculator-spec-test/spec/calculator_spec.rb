require './lib/calculator'  #=> add this

RSpec.describe Calculator do
  
  # add
  describe "#add" do  
  it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  # multiply
  describe "#multiply" do
  it "returns the multiplication of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(5, 2)).to eql(10)
    end

    it "returns the multiplication of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(2, 5, 7)).to eql(70)
    end
  end

  # subtract
  describe "#subtract" do
  it "returns the subtraction of two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(5, 2)).to eql(3)
    end

    it "returns the subtraction of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(2, 5, 7)).to eql(-10)
    end
  end

  # divide
  describe "#divide" do
  it "returns the division of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(10, 2)).to eql(5)
    end

    it "returns the division of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(100, 10, 2)).to eql(5)
    end
  end

end