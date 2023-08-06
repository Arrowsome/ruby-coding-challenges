require_relative 'solution'

def power(b, p)
  raise NotImplementedError
end

describe 'power' do
  it '2^1 returns 2' do
    expect(power(2, 1)).to eq(2)
  end

  it '2^2 returns 2' do
    expect(power(2, 2)).to eq(4)
  end

  it '2^3 returns 8' do
    expect(power(2, 3)).to eq(8)
  end

  it '3^4 returns 81' do
    expect(power(3, 4)).to eq(81)
  end
end
