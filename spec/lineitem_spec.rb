require 'lineitem'

describe Lineitem do

  it 'can calculate the subtotal for a dish' do
    lineitem_1 = Lineitem.new "Fish"
    expect(lineitem_1.view).to eq ""
  end

  it 'can calculate the subtotal for a multiple quantity dish' do
    lineitem_2 = Lineitem.new "Chips", 2
    expect(lineitem_2.view).to eq ""
  end
end
