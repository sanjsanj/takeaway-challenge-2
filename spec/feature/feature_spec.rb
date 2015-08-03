require 'order'

feature 'Interface test' do
  before do
    visit '/'
  end

  scenario 'Customer can see a list of dishes with prices' do
    expect(page).to have_content 'Fish £4.00 Add to cart Chips £3.00 Add to cart Cola £2.00 Add to cart'
  end

  scenario 'Customer can select some number of several available dishes' do
  end

  scenario 'Customer can view the total of their order' do
  end
end
