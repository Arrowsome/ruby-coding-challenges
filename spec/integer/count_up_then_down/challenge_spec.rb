require_relative 'solution'

def count_up_then_down(n)
  raise NotImplementedError
end

describe 'count_up_then_down' do

  it 'count up then down from 0' do
    expect(count_up_then_down(0)).to eq([0])
  end

  it 'count up then down from 1' do
    expect(count_up_then_down(1)).to eq([0, 1, 0])
  end

  it 'count up then down from 2' do
    expect(count_up_then_down(2)).to eq([0, 1, 2, 1, 0])
  end

  it 'count up then down from 3' do
    expect(count_up_then_down(3)).to eq([0, 1, 2, 3, 2, 1, 0])
  end

  it 'count up then down from 4' do
    expect(count_up_then_down(4)).to eq([0, 1, 2, 3, 4, 3, 2, 1, 0])
  end

  it 'count up then down from 9' do
    expect(count_up_then_down(9)).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0])
  end

end
