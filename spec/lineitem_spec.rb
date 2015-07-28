require 'lineitem'

describe Lineitem do
  let(:menu) { double :menu, dishes: [{ name: "Fish", price: 4 },
                                      { name: "Chips", price: 3 },
                                      { name: "Cola", price: 2 }]
             }

  before do
    lineitem_1 = Lineitem.new menu.dishes[0]
    lineitem_2 = Lineitem.new menu.dishes[1], 2
  end


  it 'knows the name of a dish' do
    expect(lineitem_1.dish_name).to eq "Fish"
  end

  it 'knows the price for each dish' do
    expect(lineitem_1.dish_price).to eq 4
  end

  it 'knows the quantity for a single quantity dish' do
    expect(lineitem_1.dish_qty).to eq 1
  end

  it 'knows the quantity for a multiple quantity dish' do
    expect(lineitem_2.dish_qty).to eq 2
  end

  it 'knows the line total for a single quantity dish' do
    expect(lineitem_1.dish_qty).to eq 4
  end

  it 'knows the line total for a multiple quantity dish' do
    expect(lineitem_2.line_total).to eq 6
  end
end
