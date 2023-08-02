require 'rspec'

# require_relative 'solution'

def square_equals?(nums, squares)
  return false unless nums.length == squares.length
  nums.map { |n| n**2 }.group_by { |e| e } == squares.group_by { |e| e }

  # raise NotImplementedError
end

RSpec.describe 'square_equals?' do

  it "square 2 equal square 4" do
    expect(square_equals?([2], [4])).to eq(true)
  end

  it "square 1, 2, 3 equals square 9, 1, 4" do
    expect(square_equals?([1, 2, 3], [9, 1, 4])).to eq(true)
  end

  it "square 1, 2, 3 does not equal square 9, 1, 7" do
    expect(square_equals?([1, 2, 3], [9, 1, 7])).to eq(false)
  end

  it "square 1, 2, 3 does not equal square 9, 1" do
    expect(square_equals?([1, 2, 3], [9, 1])).to eq(false)
  end

  it "square 1, 2, 1 does not equal 4, 1, 4" do
    expect(square_equals?([1, 2, 1], [4, 1, 4])).to eq(false)
  end
end