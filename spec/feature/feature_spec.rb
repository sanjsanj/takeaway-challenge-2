require 'menu'
require 'order'

feature 'A customer' do
  menu = Menu.new
  order = Order.new

  scenario 'can see a list of dishes with prices' do
    expected_dishes = [{ name: "Fish", price: 4 },
                       { name: "Chips", price: 3 },
                       { name: "Cola", price: 2 }]
    expect(menu.dishes).to eq expected_dishes
  end

  scenario 'can select some number of several available dishes' do
    # expected_order = ""
    # order.add lineitem1
    # order.add lineitem2
    # order.add lineitem3
    # expect(order.view).to eq expected_order
  end

  scenario 'can check the total of their order' do
  end

  scenario 'receives a text confirming their order' do
  end
end
