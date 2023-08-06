require_relative 'solution'

def product(nums)
  raise NotImplementedError
end

describe 'product' do
  it 'product 0 returns 0' do
    expect(product([0])).to eq(0)
  end

  it 'product 1, 2, 3 returns 6' do
    expect(product([1, 2, 3])).to eq(6)
  end

  it 'product 4, 2, 10 returns 80' do
    expect(product([4, 2, 10])).to eq(80)
  end
end
