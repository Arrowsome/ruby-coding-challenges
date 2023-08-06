require_relative 'solution'

def max_occurring_char(str)
  raise NotImplementedError
end

describe 'max_occurring_char' do

  it "Don't find a char in empty string" do
    expect(max_occurring_char('')).to eq(nil)
  end

  it "Finds char 'a' in string 'a'" do
    expect(max_occurring_char('a')).to eq('a')
  end

  it "Finds char 'a' in string 'abcdefghijklmnaaaaa'" do
    expect(max_occurring_char('abcdefghijklmnaaaaa')).to eq('a')
  end

  it "Finds char '1' in string 'ab1c1d1e1f1g1'" do
    expect(max_occurring_char('ab1c1d1e1f1g1')).to eq('1')
  end
end
