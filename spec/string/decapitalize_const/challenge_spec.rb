require_relative 'solution'

def decapitalize_const(const)
  raise NotImplementedError
end

describe 'decapitalize_const' do
  it "'FOOBAR' return foobar" do
    expect(decapitalize_const('FOOBAR')).to eq('foobar')
  end

  it "'FOO_BAR' return 'fooBar'" do
    expect(decapitalize_const('FOO_BAR')).to eq('fooBar')
  end

  it "'FOO_BAR_BAZ' return 'fooBarBaz'" do
    expect(decapitalize_const('FOO_BAR_BAZ')).to eq('fooBarBaz')
  end

  it "'__F_BAR' return 'fBar'" do
    expect(decapitalize_const('__F_BAR')).to eq('fBar')
  end

  it "empty string return empty string" do
    expect(decapitalize_const('')).to eq('')
  end
end
