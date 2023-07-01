require 'rspec'

require_relative 'solution'

def print_numbers(n)
  raise NotImplementedError
end

describe 'print_numbers' do
  it '0 return empty list' do
    expect(print_numbers(0)).to eq([])
  end

  it '1 return [1]' do
    expect(print_numbers(1)).to eq([1])
  end

  it '3 return [3, 2, 1]' do
    expect(print_numbers(3)).to eq([3, 2, 1])
  end

  it '5 return [5, 4, 3, 2, 1]' do
    expect(print_numbers(5)).to eq([5, 4, 3, 2, 1])
  end
end