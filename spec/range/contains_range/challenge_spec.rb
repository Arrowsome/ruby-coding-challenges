require 'rspec'

require_relative 'solution'

def contains_range?(range1, range2)
  raise NotImplementedError
end

RSpec.describe 'contains_range' do

  it '5-7 range contains 5-7' do
    expect(contains_range?(5..7, 5..7)).to eq(true)
  end

  it '1-12 range contains 5-7' do
    expect(contains_range?(1..12, 5..7)).to eq(true)
  end

  it '12-17 range contains 12-14' do
    expect(contains_range?(12..17, 12..14)).to eq(true)
  end

  it '12-17 range contains 15-17' do
    expect(contains_range?(5..7, 5..7)).to eq(true)
  end

  it '5-7 range contains 1-12' do
    expect(contains_range?(5..7, 1..12)).to eq(false)
  end

  it '5-8 range contains 5-9' do
    expect(contains_range?(5..8, 5..9)).to eq(false)
  end

  it '5-8 range contains 3-5' do
    expect(contains_range?(5..8, 3..5)).to eq(false)
  end
end