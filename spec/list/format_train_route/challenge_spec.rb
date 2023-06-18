require 'rspec'

require_relative 'solution'

def format_train_route(stations)
  raise NotImplementedError
end

describe 'format_train_route' do
  it 'formats `Luton`' do
    expect(format_train_route(['Luton'])).to eq('Train is calling at Luton')
  end

  it 'formats array `Luton`, `Harpenden`' do
    expect(format_train_route(['Luton', 'Harpenden'])).to eq('Train is calling at Luton and Harpenden')
  end

  it 'formats array `Luton`, `Harpenden`, `London`' do
    expect(format_train_route(['Luton', 'Harpenden', 'London'])).to eq('Train is calling at Luton, Harpenden and London')
  end

  it 'formats array `Luton`, `Harpenden`, `St Albans`,`London`' do
    expect(format_train_route(['Luton', 'Harpenden', 'St Albans', 'London'])).to eq('Train is calling at Luton, Harpenden, St Albans and London')
  end
end