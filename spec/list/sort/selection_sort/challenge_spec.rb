require 'rspec'

require_relative 'solution'

def selection_sort(array)
  raise NotImplementedError
end

RSpec.describe 'selection_sort' do

  it "sorts empty list" do
    expect(selection_sort([])).to eq([])
  end

  it "sorts 7" do
    expect(selection_sort([7])).to eq([7])
  end

  it "sorts 9, 3" do
    expect(selection_sort([9, 3])).to eq([3, 9])
  end

  it "sorts 5, 1, 4, 2" do
    expect(selection_sort([5, 1, 4, 2])).to eq([1, 2, 4, 5])
  end

  it "sorts 5, 2, 1, 8, 4, 7, 6, 3" do
    expect(selection_sort([5, 2, 1, 8, 4, 7, 6, 3])).to eq([1, 2, 3, 4, 5, 6, 7, 8])
  end

  it "sorts 17, 4, 12, 19, 80, 75, 16" do
    expect(selection_sort([17, 4, 12, 19, 80, 75, 16])).to eq([4, 12, 16, 17, 19, 75, 80])
  end

  it "sorts 11, 40, 40, 50, 43, 10, 30, 42, 20, 6, 19, 32, 20, 41, 23, 27" do
    expect(
      selection_sort([11, 40, 40, 50, 43, 10, 30, 42, 20, 6, 19, 32, 20, 41, 23, 27])
    ).to eq([6, 10, 11, 19, 20, 20, 23, 27, 30, 32, 40, 40, 41, 42, 43, 50])
  end
end