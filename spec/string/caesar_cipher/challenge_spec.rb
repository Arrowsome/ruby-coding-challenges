require_relative 'solution'

def caesar_cipher(str, shift)
  raise NotImplementedError
end

describe 'caesar_cipher' do
  it "'abc' with shift 1 return 'bcd'" do
    expect(caesar_cipher('abc', 1)).to eq('bcd')
  end

  it "'abcdefghijklmnopqrstuvwxyz' shift 1 returns 'bcdefghijklmnopqrstuvwxyza'" do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 1)).to eq('bcdefghijklmnopqrstuvwxyza')
  end

  it "'abcdefghijklmnopqrstuvwxyz' with shift 1 return 'hijklmnopqrstuvwxyzabcdefg'" do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 7)).to eq('hijklmnopqrstuvwxyzabcdefg')
  end

  it "'abcdefghijklmnopqrstuvwxyz' with shift 1 return 'yzabcdefghijklmnopqrstuvwx'" do
    expect(caesar_cipher('abcdefghijklmnopqrstuvwxyz', 50)).to eq('yzabcdefghijklmnopqrstuvwx')
  end
end
