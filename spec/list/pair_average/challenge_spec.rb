require 'rspec'

require_relative 'solution'

def has_pair_average?(array, average)
  raise NotImplementedError
end

RSpec.describe 'has_pair_average?' do

  it "empty list return false" do
    expect(has_pair_average?([], 1.0)).to eq(false)
  end

  it "list size 1 return false" do
    expect(has_pair_average?([1], 1.0)).to eq(false)
  end

  it "list 3, 5 should with average 5,5 return false" do
    expect(has_pair_average?([3, 5], 5.5)).to eq(false)
  end

  it "list 3, 4, 7, 9 should with average 6,5 return true" do
    expect(has_pair_average?([3, 4, 7, 9], 6.5)).to eq(true)
  end

  it "list 3, 5 should with average 2,7 return false" do
    expect(has_pair_average?([3, 5], 2.7)).to eq(false)
  end

  it "list 3, 5, 9, 7, 11, 14 should with average 8,0 return true" do
    expect(has_pair_average?([3, 5, 9, 7, 11, 14], 8.0)).to eq(true)
  end

  it "list 3, 7, 5 should with average 3,5 return false" do
    expect(has_pair_average?([3, 7, 5], 3.5)).to eq(false)
  end

end
