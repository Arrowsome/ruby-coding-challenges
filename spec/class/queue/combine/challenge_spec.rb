require 'rspec'

require_relative 'solution'

module CombineQueues

  def self.combine(queue1, queue2)
    raise NotImplementedError
  end

  class Queue
    attr_reader :size

    def initialize
      @elements = []
      @size = 0
    end

    def add(e)
      @elements << e
      @size += 1
    end

    def remove
      if size > 0
        elem = @elements.shift
        @size -= 1
        elem
      end
    end

    def peek
      @elements.first
    end

    def empty?
      @elements.length == 0
    end

    def ==(other)
      other.is_a?(Queue) &&
        other.instance_variable_get(:@elements) == @elements
    end
  end

  describe 'combine' do

    let(:q1) { CombineQueues::Queue.new }
    let(:q2) { CombineQueues::Queue.new }
    let(:exp) { CombineQueues::Queue.new }

    it "can combine two queues with same length" do

      q1.add(1)
      q1.add(2)
      q1.add(3)
      q1.add(4)

      q2.add('one')
      q2.add('two')
      q2.add('three')
      q2.add('four')

      combined = CombineQueues::combine(q1, q2)

      exp.add(1)
      exp.add('one')
      exp.add(2)
      exp.add('two')
      exp.add(3)
      exp.add('three')
      exp.add(4)
      exp.add('four')

      expect(combined).to eq(exp)
    end

    it "can combine two queues with first one longer" do
      q1.add(1)
      q1.add(2)
      q1.add(3)

      q2.add('one')

      combined = CombineQueues::combine(q1, q2)

      exp.add(1)
      exp.add('one')
      exp.add(2)
      exp.add(3)

      expect(combined).to eq(exp)
    end

    it "can combine two queues with second one longer" do
      q1.add(1)
      q1.add(2)

      q2.add('one')
      q2.add('two')
      q2.add('three')
      q2.add('four')

      combined = CombineQueues::combine(q1, q2)

      exp.add(1)
      exp.add('one')
      exp.add(2)
      exp.add('two')
      exp.add('three')
      exp.add('four')

      expect(combined).to eq(exp)
    end
  end
end