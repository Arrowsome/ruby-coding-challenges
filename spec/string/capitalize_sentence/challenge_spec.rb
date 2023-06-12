require 'rspec'
require_relative 'solution'

def capitalize_sentence(str)
  raise NotImplementedError
end



RSpec.describe 'capitalize_sentence' do

  it '"flower" is capitalized to "Flower"' do
    expect(capitalize_sentence('flower')).to eq 'Flower'
  end

  it '"this is a house" is capitalised to "This Is A House"' do
    expect(capitalize_sentence('this is a house')).to eq 'This Is A House'
  end

end