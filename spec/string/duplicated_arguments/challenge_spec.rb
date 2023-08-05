require_relative 'solution'

def get_duplicated_arguments(*strings)
  raise NotImplementedError
end

RSpec.describe 'get_duplicate_arguments' do

  it "a, b, c returns empty list" do
    expect(get_duplicated_arguments('a', 'b', 'c')).to eq([])
  end

  it "a, b, c, a returns a" do
    expect(get_duplicated_arguments('a', 'b', 'c', 'a')).to eq(['a'])
  end

  it "a, e, a, e, d, a returns a, e" do
    expect(get_duplicated_arguments('a', 'e', 'a', 'e', 'd', 'a')).to eq(['a', 'e'])
  end

  it "no arguments returns empty list" do
    expect(get_duplicated_arguments).to eq([])
  end

end
