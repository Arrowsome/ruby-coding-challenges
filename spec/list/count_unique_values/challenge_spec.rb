require_relative 'solution'

def count_unique_values(numbers)
  raise NotImplementedError
end

describe 'count_unique_values' do
  it 'empty list return 0' do
    expect(count_unique_values([])).to eq(0)
  end

  it '4 return 1' do
    expect(count_unique_values([4])).to eq(1)
  end

  it '3, 3, 3, 3, 5 return 2' do
    expect(count_unique_values([3, 3, 3, 3, 5])).to eq(2)
  end

  it '5, 5, 6, 7, 7 returns 3' do
    expect(count_unique_values([5, 5, 6, 7, 7])).to eq(3)
  end

  it '1, 5, 9, 9 returns 3' do
    expect(count_unique_values([1, 5, 5, 5, 9])).to eq(3)
  end

  it '4, 4, 5, 7, 10, 10 returns 4' do
    expect(count_unique_values([4, 4, 5, 7, 10, 10])).to eq(4)
  end

  it '2, 2, 3, 6, 7, 9, 9, 12, 13, 13 returns 7' do
    expect(count_unique_values([2, 2, 3, 6, 7, 9, 9, 12, 13, 13])).to eq(7)
  end

  it '2, 2, 3, 6, 7, 9, 9, 12, 13, 13 returns 7' do
    expect(count_unique_values([2, 2, 3, 6, 7, 9, 9, 12, 13, 13])).to eq(7)
  end

  it '1, 2, 3, 4, 5 return 5' do
    expect(count_unique_values([1, 2, 3, 4, 5])).to eq(5)
  end

  it '2, 3, 4, 7 return 4' do
    expect(count_unique_values([2, 3, 4, 7])).to eq(4)
  end
end
