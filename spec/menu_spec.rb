require 'menu'

describe Menu do
  it 'has dishes' do
    expect(subject.dishes.keys).to include String
  end

  it 'each dish has a price' do
    expect(subject.dishes.values).to include Float
  end
end
