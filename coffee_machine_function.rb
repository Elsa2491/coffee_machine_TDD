def coffee_machine_function(beverage, sugar, stick)
    return 'T:1:0' if beverage == 'tea'
    return 'H::' if beverage == 'chocolate'
    return 'C:2:0' if beverage == 'coffee'
    return 'M:message-content'
end
