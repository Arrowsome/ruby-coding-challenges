require 'rspec'

require_relative 'solution'

def reverse(str)
  raise NotImplementedError
end

describe 'reverse' do
  it "Reverse of 'abcd' is 'dcba'" do
    expect(reverse('abcd')).to eq('dcba')
  end

  it "Reverse of 'aabbccdd' is 'ddccbbaa'" do
    expect(reverse('aabbccdd')).to eq('ddccbbaa')
  end

  it "Reverse of 'hello' is 'olleh'" do
    expect(reverse('hello')).to eq('olleh')
  end
end