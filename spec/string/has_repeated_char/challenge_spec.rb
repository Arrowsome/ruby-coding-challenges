require_relative 'solution'

def repeated_char?(str)
  raise NotImplementedError
end

describe 'repeated_chars?' do
  it "'abc' don't have repeated character" do
    expect(repeated_char?('abc')).to eq(false)
  end

  it "'aabc' has repeated character" do
    expect(repeated_char?('aabc')).to eq(true)
  end

  it "'aabcc' has repeated character" do
    expect(repeated_char?('aabc')).to eq(true)
  end
end
