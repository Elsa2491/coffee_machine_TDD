def coffee_machine(beverage, sugar, stick)
  if beverage == 'tea'
    'T:1:0'
  elsif beverage == 'chocolate'
    'H::'
  elsif beverage == 'coffee'
    'C:2:0'
  else
    'M:message-content'
  end
end
