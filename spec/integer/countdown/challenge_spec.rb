require_relative 'solution.rb'

def countdown(n)
  raise NotImplementedError
end

describe 'countdown' do

  it "count down from 0" do
    expect(countdown(0)).to eq([0])
  end

  it "count down from 1" do
    expect(countdown(1)).to eq([1, 0])
  end

  it "count down from 5" do
    expect(countdown(5)).to eq([5, 4, 3, 2, 1, 0])
  end

end
