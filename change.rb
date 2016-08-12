require 'rspec'

class Change

  def calculate_change(amount)
    change = []

    quarter_times = amount/25
    quarter_times.times do
      change << 25
    end

    amount -= (quarter_times*25)
    dime_times = amount/10
    dime_times.times do
      change<<10
    end

    amount -= (dime_times*10)
    nickel_times = amount/5
    nickel_times.times do
      change<<5
    end
    amount -= (nickel_times*5)
    amount.times do
      change<<1
    end

    return change
  end


end


RSpec.describe Change do

  describe '#calculate_change' do
    it 'should return 25 if given 25' do
      change = Change.new
      expect(change.calculate_change(25)).to eq([25])
    end

    it 'should return 25 25 if given 50' do
      change = Change.new
      expect(change.calculate_change(50)).to eq([25,25])
    end

    it 'should return 25 10 if given 35' do
      change = Change.new
      expect(change.calculate_change(35)).to eq([25,10])
    end
    it 'should return 25 10 5 if given 40' do
      change = Change.new
      expect(change.calculate_change(40)).to eq([25,10,5])
    end
    it 'should return 25 10 5 1 1 if given 42' do
      change = Change.new
      expect(change.calculate_change(42)).to eq([25,10,5,1,1])
    end
    it 'should return 25,25,25,25,10,5,1,1,1,1 if given 119' do
      change = Change.new
      expect(change.calculate_change(119)).to eq([25,25,25,25,10,5,1,1,1,1])
    end
  end
end