require 'lineitem'

describe LineItem do
  let(:menu) { double :menu, dishes: [{ name: "Fish", price: 4 },
                                      { name: "Chips", price: 3 },
                                      { name: "Cola", price: 2 }]
             }

  let(:lineitem_1) { LineItem.new menu.dishes[0] }
  let(:lineitem_2) { LineItem.new menu.dishes[1], 2 }

  it 'knows the name of a dish' do
    expect(lineitem_1.dish[:name]).to eq "Fish"
  end

  it 'knows the price of a dish' do
    expect(lineitem_1.dish[:price]).to eq 4
  end

  it 'knows the quantity for a single quantity dish' do
    expect(lineitem_1.quantity).to eq 1
  end

  it 'knows the quantity for a multiple quantity dish' do
    expect(lineitem_2.quantity).to eq 2
  end

  it 'knows the line total for a single quantity dish' do
    expect(lineitem_1.total).to eq 4
  end

  it 'knows the line total for a multiple quantity dish' do
    expect(lineitem_2.total).to eq 6
  end
end
