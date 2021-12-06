require_relative '../coffee_machine'

describe CoffeeMachine do

  describe "#coffee_machine" do
    it "should return 'T:1:0' when customer orders one tea with one sugar and a stick" do
      order = CoffeeMachine.new('tea', 1, 1, 0.4).coffee_machine
      expected = 'T:1:0'
      expect(order).to eq(expected)
    end

    it "should return 'H::' when customer orders one chocolate with no sugar and therefore no stick" do
      order = CoffeeMachine.new('chocolate', 0, 0, 0.5).coffee_machine
      expected = 'H::'
      expect(order).to eq(expected)
    end

    it "should return 'C:2:0' when customer orders one coffee with two sugars and a stick" do
      order = CoffeeMachine.new('coffee', 2, 1, 0.6).coffee_machine
      expected = 'C:2:0'
      expect(order).to eq(expected)
    end

    it "should return 'Sorry: 0.2€ is missing' is missing when customer a tea" do
      order = CoffeeMachine.new('tea', 1, 1, 0.2).coffee_machine
      expected = "Sorry: #{0.4 - 0.2}€ is missing"
      expect(order).to eq(expected)
    end

    it "should return 'Sorry: 0.3€ is missing' when customer orders a chocolate" do
      order = CoffeeMachine.new('chocolate', 1 , 1, 0.2).coffee_machine
      expected = "Sorry: #{(0.5 - 0.2).round(1)}€ is missing"
      expect(order).to eq(expected)
    end


    it "should return 'Sorry: 0.4€ is missing' when customer orders a coffe" do
       order = CoffeeMachine.new('coffee', 1, 1, 0.2).coffee_machine
      expected = "Sorry: #{(0.6 - 0.2).round(1)}€ is missing"
      expect(order).to eq(expected)
    end

    it "should return 'M:message-content' when there is no message" do
      order = CoffeeMachine.new('', '', '', '').coffee_machine
      expected = 'M:message-content'
      expect(order).to eq(expected)
    end
  end
end

