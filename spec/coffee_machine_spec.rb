require_relative '../coffee_machine'

describe CoffeeMachine do

  describe "#coffee_machine" do

    it "should return 'T:1:0' when customer orders one tea with one sugar and a stick'" do
      order = CoffeeMachine.new('tea', 'sugar', 'stick')
      actual = order.coffee_machine
      expected = 'T:1:0'
      expect(actual).to eq(expected)
    end

    it "should return 'H::' when customer orders one chocolate with no sugar and therefore no stick" do
      order = CoffeeMachine.new('chocolate', 'sugar', 'stick')
      actual = order.coffee_machine
      expected = 'H::'
      expect(actual).to eq(expected)
    end

    it "should return 'C:2:0' when customer orders one coffee with two sugars and a stick" do
      order = CoffeeMachine.new('coffee', 'sugar', 'stick')
      actual = order.coffee_machine
      expected = 'C:2:0'
      expect(actual).to eq(expected)
    end

    it "should return 'M:message-content' when there is no message" do
      order = CoffeeMachine.new('', '', '')
      actual = order.coffee_machine
      expected = 'M:message-content'
      expect(actual).to eq(expected)
    end
  end
end
