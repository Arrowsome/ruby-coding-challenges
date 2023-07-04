require 'rspec'

require_relative 'solution.rb'

def anagrams?(str1, str2)
  raise NotImplementedError
end

describe 'anagram?' do
  it "'rail safety' is an anagram of 'fairy tales'" do
    expect(anagrams?('rail safety', 'fairy tales')).to eq(true)
  end

  it "'RAIL SAFETY' is an anagram of 'fairy tales' - ignore letter casing" do
    expect(anagrams?('RAIL SAFETY', 'fairy tales')).to eq(true)
  end

  it "'rail safety!!' is an anagram of 'fairy tales' - ignore special characters" do
    expect(anagrams?('rail safety!!', 'fairy tales')).to eq(true)
  end

  it "'hi' is not an anagram of 'ihi'" do
    expect(anagrams?('hi', 'ihi')).to eq(false)
  end

  it "'hello' is an anagram of 'llohe'" do
    expect(anagrams?('hello', 'llohe')).to eq(true)
  end

  it "'Whoa! Hi!' is an anagram of 'Hi! Whoa!'" do
    expect(anagrams?('Whoa! Hi!', 'Hi! Whoa!')).to eq(true)
  end

  it "One One' is not an anagram of 'Two two two" do
    expect(anagrams?('One One', 'Two two two')).to eq(false)
  end

  it "'One one' is not an anagram of 'One one c'" do
    expect(anagrams?('One One', 'One one c')).to eq(false)
  end

  it "One one' is an anagram of 'One one  ' - ignore spaces" do
    expect(anagrams?('One one', 'One one  ')).to eq(true)
  end

  it "'A tree, a life, a bench' is not an anagram of 'A tree, a fence, a yard'" do
    expect(anagrams?('A tree, a life, a bench', 'A tree, a fence, a yard')).to eq(false)
  end
end