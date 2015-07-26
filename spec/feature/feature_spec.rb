require 'menu'

feature 'A customer' do
  menu = Menu.new

  scenario 'can see a list of dishes with prices' do
    expected_dishes = { "Fish" => 4.0, "Chips" => 3.0, "Drink" => 2.0 }
    expect(menu.dishes).to eq expected_dishes
  end

  scenario 'can select some number of several available dishes' do

  end

  scenario 'can check the total of their order' do

  end

  scenario 'receives a text confirming their order' do

  end
end
