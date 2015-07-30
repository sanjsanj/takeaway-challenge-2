require 'order'

describe Order do
  let(:lineitem_1) { double :lineitem_1, dish_name: "Fish", dish_price: 4.00, dish_qty: 1, line_total: 4.00 }
  let(:lineitem_2) { double :lineitem_2, dish_name: "Chips", dish_price: 3.00, dish_qty: 2, line_total: 6.00 }
  let(:order_1) { Order.new lineitem_1 }
  let(:order_2) { Order.new lineitem_1, lineitem_2 }

  it 'knows the total for a line item' do
    expect(order_1.total).to eq 4.00
  end

  it 'knows the total for multiple line items' do
    expect(order_2.total).to eq 10.00
  end
end
