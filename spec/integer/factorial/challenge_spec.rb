require_relative 'solution'

def factorial(n)
  raise NotImplementedError
end

describe 'factorial' do
  it 'factorial 0 should equal 1' do
    expect(factorial(0)).to eq(1)
  end

  it 'factorial 3 should equal 6' do
    expect(factorial(3)).to eq(6)
  end

  it 'factorial 5 should equal 120' do
    expect(factorial(5)).to eq(120)
  end

  it 'factorial 10 should equal 3628800' do
    expect(factorial(10)).to eq(3628800)
  end
end
