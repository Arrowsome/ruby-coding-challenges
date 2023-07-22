require 'rspec'

require_relative 'solution'

class Stack

  def add(e)
    # raise NotImplementedError
  end

  def remove
    # raise NotImplementedError
  end

  def peek
    # raise NotImplementedError
  end

  def empty?
    # raise NotImplementedError
  end

end

describe 'Stack' do

  subject(:stack) { Solution2::Stack.new }

  it "adds elements to stack" do
    expect(stack.size).to eq(0)

    stack.add('A')
    stack.add('B')

    expect(stack.size).to eq(2)
  end

  it "removes elements from the queue (FILO)" do
    stack.add('A')
    stack.add('B')
    stack.add('C')

    expect(stack.remove).to eq('C')
    expect(stack.remove).to eq('B')
    expect(stack.remove).to eq('A')
    expect(stack.size).to eq(0)
  end

  it "peeks elements inside the queue" do
    expect(stack.peek).to eq(nil)

    stack.add('A')
    stack.add('B')

    expect(stack.peek).to eq('B')
    expect(stack.peek).to eq('B')
  end

  it "has valid (not) empty state" do
    expect(stack.empty?).to eq(true)

    stack.add('A')

    expect(stack.empty?).to eq(false)
  end

  it "functions as a class properly" do
    expect(stack.size).to eq(0)
    expect(stack.empty?).to eq(true)
    expect(stack.peek).to eq(nil)
    expect(stack.remove).to eq(nil)

    stack.add(10.55)
    stack.add(20.99)
    stack.add(50.33)

    expect(stack.size).to eq(3)
    expect(stack.empty?).to eq(false)
    expect(stack.peek).to eq(50.33)
    expect(stack.remove).to eq(50.33)
    expect(stack.peek).to eq(20.99)
    expect(stack.remove).to eq(20.99)
    expect(stack.peek).to eq(10.55)
    expect(stack.remove).to eq(10.55)
    expect(stack.remove).to eq(nil)
    expect(stack.size).to eq(0)
    expect(stack.empty?).to eq(true)
  end

end