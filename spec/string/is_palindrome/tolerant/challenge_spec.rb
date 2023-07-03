require 'rspec'

require_relative 'solution'

def tolerant_palindrome?(str)
  raise NotImplementedError
end

describe 'is_tolerant_palindrome' do
  it "'aba' is a palindrome" do
    expect(tolerant_palindrome?('aba')).to eq(true)
  end

  it "'ab!a' is a palindrome" do
    expect(tolerant_palindrome?('ab!a')).to eq(true)
  end

  it "'a!ba' is a palindrome" do
    expect(tolerant_palindrome?('a!ba')).to eq(true)
  end

  it "'a!bcddcba' is a palindrome" do
    expect(tolerant_palindrome?('a!bcddcba')).to eq(true)
  end

  it "'abcddcb!a' is a palindrome" do
    expect(tolerant_palindrome?('abcddcb!a')).to eq(true)
  end

  it "'!a' is a palindrome" do
    expect(tolerant_palindrome?('!a')).to eq(true)
  end

  it "'a!' is a palindrome" do
    expect(tolerant_palindrome?('a!')).to eq(true)
  end

  it "' aba' is a palindrome" do
    expect(tolerant_palindrome?(' aba')).to eq(true)
  end

  it "'aa#!aa ' is not a palindrome" do
    expect(tolerant_palindrome?('aa#!aa ')).to eq(false)
  end

  it "'greetings' is not a palindrome" do
    expect(tolerant_palindrome?('greetings')).to eq(false)
  end

  it "'1000000001' a palindrome" do
    expect(tolerant_palindrome?('1000000001')).to eq(true)
  end

  it "'10A00000001' is a palindrome" do
    expect(tolerant_palindrome?('10A00000001')).to eq(true)
  end

  it "Fish hsif' is not a palindrome" do
    expect(tolerant_palindrome?('Fish hsif')).to eq(false)
  end

  it "'pennep' is a palindrome" do
    expect(tolerant_palindrome?('pennep')).to eq(true)
  end
end