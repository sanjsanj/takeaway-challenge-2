require 'menu'

describe Menu do

  it 'has dishes' do
    expect(subject.dishes).not_to be_empty
  end

  it 'each dish has a name' do
    subject.dishes.each do |dish|
      expect(dish[:name].class).to be String
    end
  end

  it 'each dish has a price' do
    subject.dishes.each do |dish|
      expect(dish[:price].class).to be Float
    end
  end
end
