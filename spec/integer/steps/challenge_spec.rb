require_relative 'solution'

def generate_steps(n)
  raise NotImplementedError
end

describe 'generate_steps' do

  it "generates steps n = 1" do
    steps = generate_steps(1)
    expect(steps.length).to eq(1)
    expect(steps[0]).to eq('#')
  end

  it "generates steps n = 2" do
    steps = generate_steps(2)
    expect(steps.length).to eq(2)
    expect(steps[0]).to eq('# ')
    expect(steps[1]).to eq('##')
  end

  it "generates steps n = 3" do
    steps = generate_steps(3)
    expect(steps.length).to eq(3)
    expect(steps[0]).to eq('#  ')
    expect(steps[1]).to eq('## ')
    expect(steps[2]).to eq('###')
  end

end
