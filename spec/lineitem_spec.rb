require 'lineitem'

describe Lineitem do

  it 'knows which dish it has' do
    lineitem_1 = Lineitem.new "Fish"
    expect(lineitem_1.dish).to eq "Fish"
  end

  it 'knows the price for each dish' do

  end

  it 'knows the line total for quantity 1' do

  end

  it 'knows the line total for quantity 1' do

  end

  it 'can calculate the subtotal for a multiple quantity dish' do
    lineitem_2 = Lineitem.new "Chips", 2
    expect(lineitem_2.view).to eq ""
  end
end
