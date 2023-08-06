require_relative 'solution'

def add_upto(n)
  raise NotImplementedError
end

describe 'add_upto' do

  it '1 sums to 1' do
    expect(add_upto(1)).to eq(1)
  end

  it '3 sums to 6' do
    expect(add_upto(3)).to eq(6)
  end

  it '10 sums to 50' do
    expect(add_upto(10)).to eq(55)
  end

end
