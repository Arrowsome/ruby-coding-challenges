require_relative 'solution'

def print_numbers_with_steps(n, step = 1)
  raise NotImplementedError
end

describe 'print_numbers_with_steps' do
  it '0 step 1 return empty list' do
    expect(print_numbers_with_steps(0)).to eq([])
  end

  it '1 step 1 return [1]' do
    expect(print_numbers_with_steps(1)).to eq([1])
  end

  it '3 step 2 return [3, 1]' do
    expect(print_numbers_with_steps(3, 2)).to eq([3, 1])
  end

  it '11 step 3 return [11, 8, 5, 2]' do
    expect(print_numbers_with_steps(11, 3)).to eq([11, 8, 5, 2])
  end
end
