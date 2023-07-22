require 'rspec'

require_relative 'solution'

def generate_spiral(n)
  raise NotImplementedError
end

describe 'generate_spiral' do
  it "generates a 2x2 matrix" do
    expect(generate_spiral(2)).to eq([
      [1, 2],
      [4, 3],
    ])
  end

  it "generates a 3x3 matrix" do
    expect(generate_spiral(3)).to eq([
      [1, 2, 3],
      [8, 9, 4],
      [7, 6, 5],
    ])
  end

  it "generates a 4x4 matrix" do
    expect(generate_spiral(4)).to eq([
      [1, 2, 3, 4],
      [12, 13, 14, 5],
      [11, 16, 15, 6],
      [10, 9, 8, 7],
    ])
  end
end