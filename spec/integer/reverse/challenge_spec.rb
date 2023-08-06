require_relative 'solution'

def reverse_int(n)
  raise NotImplementedError
end

describe 'reverse_number' do
  it "handles 0 as an input" do
    expect(reverse_int(0)).to eq(0)
  end

  it "flips a positive number" do
    expect(reverse_int(5)).to eq(5)
    expect(reverse_int(15)).to eq(51)
    expect(reverse_int(90)).to eq(9)
    expect(reverse_int(700)).to eq(7)
    expect(reverse_int(2359)).to eq(9532)
  end

  it "flips a negative number" do
    expect(reverse_int(-5)).to eq(-5)
    expect(reverse_int(-15)).to eq(-51)
    expect(reverse_int(-90)).to eq(-9)
    expect(reverse_int(-700)).to eq(-7)
    expect(reverse_int(-2359)).to eq(-9532)
  end
end
