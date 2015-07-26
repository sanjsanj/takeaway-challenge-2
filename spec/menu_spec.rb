require 'menu'

describe Menu do
  it 'has dishes' do
    expect(subject.dishes).not_to be_empty
  end

  it 'each dish has a price as a float' do
    subject.dishes.each do |dish, price|
      expect(subject.dishes[dish].class).to be Float
    end
  end
end
