require_relative 'solution'

def sum_zero(nums)
  raise NotImplementedError
end

RSpec.describe 'sum_zero' do

  it "receives empty list return nil" do
    expect(sum_zero([])).to eq(nil)
  end

  it "receives 1, 2 return nil" do
    expect(sum_zero([1, 2])).to eq(nil)
  end

  it "receives 1, 2, 4, 7 return nil" do
    expect(sum_zero([1, 2, 4, 7])).to eq(nil)
  end

  it "receives -1, 2, 4, 7 return nil" do
    expect(sum_zero([-1, 2, 4, 7])).to eq(nil)
  end

  it "receives -4, -3, -2, 1, 2, 3, 5 return [-3, 3]" do
    expect(sum_zero([-4, -3, -2, 1, 2, 3, 5])).to eq([-3, 3])
  end

  it "receives -4, -3, -2, 1, 2, 5 return [-2, 2]" do
    expect(sum_zero([-4, -3, -2, 1, 2, 5])).to eq([-2, 2])
  end
end
