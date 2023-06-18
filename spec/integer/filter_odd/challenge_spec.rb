# require_relative 'solution'

def filter_odd(list)
  raise NotImplementedError
end

RSpec.describe 'filter_odd' do

  it 'empty list returns empty list' do
    expect(filter_odd([])).to eq []
  end

  it '1, 2, 3 returns 1, 3' do
    expect(filter_odd([1, 2, 3])).to eq [1, 3]
  end

  it '2, 9, 2, 5, 4 returns 9, 5' do
    expect(filter_odd([2, 9, 2, 5, 4])).to eq [9, 5]
  end

  it '7, 4, 6, 8, 7, 9 returns 7, 7, 9' do
    expect(filter_odd([7, 4, 6, 8, 7, 9])).to eq [7, 7, 9]
  end

end