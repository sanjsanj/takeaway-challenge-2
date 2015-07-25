require 'menu'

describe Menu do
  it 'has items when created' do
    expect(subject.items).not_to be_empty
  end
end
