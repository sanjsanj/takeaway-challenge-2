require 'menu'
require 'order'

feature 'A customer' do
  menu = Menu.new
  order = Order.new

  scenario 'can see a list of dishes with prices' do
    expected_dishes = { "Fish" => 4.00, "Chips" => 3.00, "Cola" => 2.00 }
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
