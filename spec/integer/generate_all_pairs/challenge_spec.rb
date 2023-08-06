require_relative 'solution'

class Pair
  attr_accessor :key, :value

  def initialize(key, value)
    @key = key
    @value = value
  end

  def ==(other)
    key == other.key && value == other.value
  end

end

def generate_all_pairs(n)
  raise NotImplementedError
end

describe 'generate_all_pairs' do
  it 'generates all pairs 0' do
    expect(generate_all_pairs(0)).to eq(
                                       [
                                         Pair.new(0, 0),
                                       ]
                                     )
  end

  it 'generates all pairs 1' do
    expect(generate_all_pairs(1)).to eq(
                                       [
                                         Pair.new(0, 0),
                                         Pair.new(0, 1),
                                         Pair.new(1, 0),
                                         Pair.new(1, 1),
                                       ]
                                     )
  end

  it 'generates all pairs 2' do
    expect(generate_all_pairs(2)).to eq(
                                       [
                                         Pair.new(0, 0),
                                         Pair.new(0, 1),
                                         Pair.new(0, 2),
                                         Pair.new(1, 0),
                                         Pair.new(1, 1),
                                         Pair.new(1, 2),
                                         Pair.new(2, 0),
                                         Pair.new(2, 1),
                                         Pair.new(2, 2),
                                       ]
                                     )
  end
end
