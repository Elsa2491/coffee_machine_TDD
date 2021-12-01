require_relative '../coffee_machine'

describe "#coffee_machine" do

  it "should return 'T:1:0' when customer orders one tea with one sugar and a stick'" do
    actual = coffee_machine('tea', 'sugar', 'stick')
    expected = 'T:1:0'
    expect(actual).to eq(expected)
  end

  it "should return 'H::' when customer orders one chocolate with no sugar and therefore no stick" do
    actual = coffee_machine('chocolate', 'sugar', 'stick')
    expected = 'H::'
    expect(actual).to eq(expected)
  end

  it "should return 'C:2:0' when customer orders one coffee with two sugars and a stick" do
    actual = coffee_machine('coffee', 'sugar', 'stick')
    expected = 'C:2:0'
    expect(actual).to eq(expected)
  end

  it "should return 'M:message-content' when there is no message" do
    actual = coffee_machine('', '', '')
    expected = 'M:message-content'
    expect(actual).to eq(expected)
  end
end
