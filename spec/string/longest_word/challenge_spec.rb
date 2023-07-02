require 'rspec'

require_relative 'solution'

def longest_word(str)
  raise NotImplementedError
end

describe 'longest_word' do
  it "'flower' return 'flower'" do
    expect(longest_word('flower')).to eq('flower')
  end

  it "'flower is growing fast' return 'growing'" do
    expect(longest_word('flower is growing fast')).to eq('growing')
  end

  it "'This is my jeep' return 'jeep'" do
    expect(longest_word('This is my jeep')).to eq('This')
  end

  it "'Home!@#&sweet home' return 'sweet'" do
    expect(longest_word('Home!@&#sweet home')).to eq('sweet')
  end
end