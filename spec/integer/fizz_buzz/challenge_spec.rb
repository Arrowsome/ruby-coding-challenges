require 'rspec'

require_relative 'solution'

def fizz_buzz(n)

  # raise NotImplementedError
end

describe 'fizz_buzz' do
  it "with '5' returns list with 5 items" do
    expect(fizz_buzz(5)).to eq([1, 2, 'Fizz', 4, 'Buzz'])
  end

  it "with '16' returns list with 16 items" do
    expect(fizz_buzz(16)).to eq([1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz',
                                11, 'Fizz', 13, 14, 'FizzBuzz', 16,])
  end
end