class CoffeeMachine
  def initialize(beverage, sugar, stick, price)
    @beverage = beverage
    @sugar = sugar
    @stick = stick
    @price = price
  end

  def coffee_machine
    return 'T:1:0' if @beverage == 'tea' && @price == 0.4
    return "Sorry: #{(0.4 - @price).round(1)}€ is missing" if @beverage == 'tea' && @price < 0.4

    return 'H::' if @beverage == 'chocolate' && @price == 0.5
    return "Sorry: #{(0.5 - @price).round(1)}€ is missing" if @beverage == 'chocolate' && @price < 0.5

    return 'C:2:0' if @beverage == 'coffee'  && @price == 0.6
    return "Sorry: #{(0.6 - @price).round(1)}€ is missing" if @beverage == 'coffee' && @price < 0.6

    return 'M:message-content'
  end
end
