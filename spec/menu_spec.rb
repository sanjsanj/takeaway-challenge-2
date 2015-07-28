require 'menu'

describe Menu do
  it 'has dishes' do
    expect(subject.dishes).not_to be_empty
  end

  it 'each dish has a name' do
    # expect(subject.dishes.values).to include Float
  end

  it 'each dish has a price' do
    # expect(subject.dishes.values).to include Float
  end
end
