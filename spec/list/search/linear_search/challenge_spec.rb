require_relative 'solution'

def get_index(array, target)
  raise NotImplementedError
end

describe 'get_index' do

  it 'index of `A` in `A, B, C` is 0' do
    expect(get_index(%w(A B C), 'A')).to eq(0)
  end

  it 'index of `B` in `A, B, C` is 1' do
    expect(get_index(%w(A B C), 'B')).to eq(1)
  end

  it 'index of `C` in `A, B, C` is 2' do
    expect(get_index(%w(A B C), 'C')).to eq(2)
  end

  it 'index of `D` in `A, B, C` is -1' do
    expect(get_index(%w(A B C), 'D')).to eq(-1)
  end

end
