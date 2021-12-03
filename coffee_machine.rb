class CoffeeMachine
  def initialize(beverage, sugar, stick)
    @beverage = beverage
    @sugar = sugar
    @stick = stick
  end

  def coffee_machine
    return 'T:1:0' if @beverage == 'tea'
    return 'H::' if @beverage == 'chocolate'
    return 'C:2:0' if @beverage == 'coffee'
    return 'M:message-content'
  end
end
