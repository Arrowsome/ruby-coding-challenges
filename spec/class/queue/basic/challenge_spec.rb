require_relative 'solution'

class Queue

  def add(e)
    raise NotImplementedError
  end

  def remove
    raise NotImplementedError
  end

  def peek
    raise NotImplementedError
  end

  def empty?
    raise NotImplementedError
  end

end

describe 'queue' do

  subject(:queue) { Queue.new }

  it "adds elements to the queue" do
    expect(queue.size).to eq(0)

    queue.add('A')
    queue.add('B')

    expect(queue.size).to eq(2)
  end

  it "removes elements from the queue" do
    queue.add('A')
    queue.add('B')

    expect(queue.remove).to eq('A')
    expect(queue.remove).to eq('B')
    expect(queue.size).to eq(0)
  end

  it "peeks elements inside the queue" do
    expect(queue.peek).to eq(nil)

    queue.add('A')
    queue.add('B')

    expect(queue.peek).to eq('A')
    expect(queue.peek).to eq('A')
  end

  it "has valid (not) empty state" do
    expect(queue.empty?).to eq(true)

    queue.add('A')

    expect(queue.empty?).to eq(false)
  end

  it "functions as a class properly" do
    expect(queue.size).to eq(0)
    expect(queue.empty?).to eq(true)
    expect(queue.peek).to eq(nil)
    expect(queue.remove).to eq(nil)

    queue.add(10.55)
    queue.add(20.99)
    queue.add(50.33)

    expect(queue.size).to eq(3)
    expect(queue.empty?).to eq(false)
    expect(queue.peek).to eq(10.55)
    expect(queue.remove).to eq(10.55)
    expect(queue.peek).to eq(20.99)
    expect(queue.remove).to eq(20.99)
    expect(queue.peek).to eq(50.33)
    expect(queue.remove).to eq(50.33)
    expect(queue.remove).to eq(nil)
    expect(queue.size).to eq(0)
    expect(queue.empty?).to eq(true)
  end

end
