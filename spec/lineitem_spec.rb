require 'lineitem'

describe Lineitem do
  lineitem_1 = Lineitem.new "Fish"
  lineitem_2 = Lineitem.new "Chips", 2

  it 'knows the name of a dish' do
    expect(lineitem_1.dish).to eq "Fish"
  end

  it 'knows the price for each dish' do
    expect(lineitem_1.price).to eq 4
  end

  it 'knows the quantity for a single quantity dish' do
    expect(lineitem_1.qty).to eq 1
  end

  it 'knows the quantity for a multiple quantity dish' do
    expect(lineitem_2.qty).to eq 2
  end

  it 'knows the line total for a single quantity dish' do
    expect(lineitem_1.qty).to eq 4
  end

  it 'knows the line total for a multiple quantity dish' do
    expect(lineitem_2.line_total).to eq 6
  end
end
