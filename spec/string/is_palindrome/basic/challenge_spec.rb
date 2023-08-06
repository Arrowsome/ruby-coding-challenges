require_relative 'solution'

def palindrome?(str)
  raise NotImplementedError
end

describe 'is_palindrome?' do
  it "'aba' is a is_palindrome" do
    expect(palindrome?('aba')).to eq(true)
  end

  it "' aba' is not a is_palindrome" do
    expect(palindrome?(' aba')).to eq(false)
  end

  it "'aba ' is not a is_palindrome" do
    expect(palindrome?('aba ')).to eq(false)
  end

  it "'greetings' is not a is_palindrome" do
    expect(palindrome?('greetings')).to eq(false)
  end

  it "'1000000001' a is_palindrome" do
    expect(palindrome?('1000000001')).to eq(true)
  end

  it "'Fish hsif' is not a is_palindrome" do
    expect(palindrome?('Fish hsif')).to eq(false)
  end

  it "'pennep' a is_palindrome" do
    expect(palindrome?('pennep')).to eq(true)
  end
end
