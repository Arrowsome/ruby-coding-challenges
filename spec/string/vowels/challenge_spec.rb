require 'rspec'

require_relative 'solution'

def vowels(str)
  raise NotImplementedError
end

describe 'vowels' do
  it "'aeiouy' has 6 vovels" do
    expect(vowels('aeiouy')).to eq(6)
  end

  it "'AEIOUY' has 6 vovels" do
    expect(vowels('AEIOUY')).to eq(6)
  end

  it "'abcdefghijklmnopqrstuvwxyz' has 6 vovels" do
    expect(vowels('abcdefghijklmnopqrstuvwxyz')).to eq(6)
  end

  it "'bcadfaghijkl' has 6 vovels" do
    expect(vowels('bcadfaghijkl')).to eq(3)
  end

  it "'bcdfghjkl' has 0 vovels" do
    expect(vowels('bcdfghjkl')).to eq(0)
  end
end