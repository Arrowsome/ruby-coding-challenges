require_relative 'solution'

def equal_digit_frequency?(n1, n2)
  # raise NotImplementedError
end

RSpec.describe 'equal_digit_frequency?' do

  it "'789' and '897' have the same digit frequency" do
    expect(equal_digit_frequency?('789', '897')).to eq(true)
  end

  it "'123445' and '451243' have the same digit frequency" do
    expect(equal_digit_frequency?('123445', '451243')).to eq(true)
  end

  it "'447' and '477' have different digit frequency" do
    expect(equal_digit_frequency?('447', '477')).to eq(false)
  end

  it "'578' and '0' have different digit frequency" do
    expect(equal_digit_frequency?('578', '0')).to eq(false)
  end

  it "'0' and '0' have the same digit frequency" do
    expect(equal_digit_frequency?('0', '0')).to eq(true)
  end
end
