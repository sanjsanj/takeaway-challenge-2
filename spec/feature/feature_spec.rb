require 'order'

feature 'A customer' do
  menu = Menu.new
  lineitem_1 = Lineitem.new menu.dishes[0]
  lineitem_2 = Lineitem.new menu.dishes[1], 2
  order_1 = Order.new lineitem_1, lineitem_2

  scenario 'can see a list of dishes with prices' do
    expected_dishes = [{ name: "Fish", price: 4 },
                       { name: "Chips", price: 3 },
                       { name: "Cola", price: 2 }]
    expect(menu.dishes).to eq expected_dishes
  end

  scenario 'can select some number of several available dishes' do
    expect { order_1.line_items_array }.not_to raise_error
  end

  scenario 'can view the total of their order' do
    expect(order_1.total).to eq 10.00
  end
end
