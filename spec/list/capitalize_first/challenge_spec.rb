require_relative 'solution'

def capitalize_first(words)
  raise NotImplementedError
end

describe 'capitalize_first' do
  it 'capitalize list with one string' do
    expect(capitalize_first(%w(igor))).to eq(%w(Igor))
  end

  it 'capitalize list with two strings' do
    expect(capitalize_first(%w(igor wojda))).to eq(%w(Igor Wojda))
  end

  it 'capitalize list with empty string' do
    expect(capitalize_first(%w())).to eq(%w())
  end

  it 'capitalize list with sentence' do
    expect(capitalize_first(["what a", "beautiful", "morning"])).to eq(["What a", "Beautiful", "Morning"])
  end
end
