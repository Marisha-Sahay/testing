require 'rspec'

class Fizzbuzz
  def output(number)
    number
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end


RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do 
      fb = Fizzbuzz.new
      expect(fb.output(1)).to eq(1)
    end

    it 'should return 2 if given 2' do 
      fb = Fizzbuzz.new
      expect(fb.output(2)).to eq(2)
    end
  end
end