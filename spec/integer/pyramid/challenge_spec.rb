require 'rspec'

require_relative 'solution'

def pyramid(n)
  raise NotImplementedError
end

describe 'pyramid' do
  it "generates pyramid of n = 2" do
    pyramid = pyramid(2)
    expect(pyramid.size).to eq(2)
    expect(pyramid[0]).to eq(' # ')
    expect(pyramid[1]).to eq('###')
  end

  it "generates pyramid of n = 3" do
    pyramid = pyramid(3)
    expect(pyramid.size).to eq(3)
    expect(pyramid[0]).to eq('  #  ')
    expect(pyramid[1]).to eq(' ### ')
    expect(pyramid[2]).to eq('#####')
  end

  it "generates pyramid of n = 4" do
    pyramid = pyramid(4)
    expect(pyramid.size).to eq(4)
    expect(pyramid[0]).to eq('   #   ')
    expect(pyramid[1]).to eq('  ###  ')
    expect(pyramid[2]).to eq(' ##### ')
    expect(pyramid[3]).to eq('#######')
  end
end