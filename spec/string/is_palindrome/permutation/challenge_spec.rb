require 'rspec'

require_relative 'solution'

def permutation_palindrome?(str)
  raise NotImplementedError
end

describe 'permutation_palindrome?' do
  it "'gikig' is a palindrome" do
    expect(permutation_palindrome?('gikig')).to eq(true)
  end

  it "'ookvk' is a palindrome" do
    expect(permutation_palindrome?('ookvk')).to eq(true)
  end

  it "'sows' is not a palindrome" do
    expect(permutation_palindrome?('sows')).to eq(false)
  end

  it "'tami' is not a palindrome" do
    expect(permutation_palindrome?('tami')).to eq(false)
  end
end