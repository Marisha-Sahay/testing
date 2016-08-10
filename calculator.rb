require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do 
  describe '#add' do 
    it 'should return the sum of two numbers' do 
      calculator = Calculator.new
      expect(calculator.add(1,2)).to eq(4)
    end
  end

  describe '#subtract' do 
    # write test here...
  end
end




# calculator = Calculator.new 
# puts "Testing the add method"
# if calculator.add(1,2) == 3
#   puts "Test passed"
# else
#   puts "Test failed"
# end

