require_relative 'solution'

def traverse_breadth_first(tree)
  raise NotImplementedError
end

module TraverseBreadthFirst

  class BinarySearchTree
    attr_reader :root

    def add(e)
      if @root.nil?
        @root = BinaryNode.new(data: e)
        return
      end

      curr = @root

      while true
        if e == curr.data
          return
        elsif e > curr.data && !curr.right.nil?
          curr = curr.right
        elsif e < curr.data && !curr.left.nil?
          curr = curr.left
        else
          break
        end
      end

      node = BinaryNode.new(data: e)
      e > curr.data ? curr.right = node : curr.left = node
    end

    def contains?(e)
      return false if root.nil?

      curr = @root

      while true
        if e == curr.data
          return true
        elsif e > curr.data && !curr.right.nil?
          curr = curr.right
        elsif e < curr.data && !curr.left.nil?
          curr = curr.left
        else
          return false
        end
      end
    end

    def empty?
      @root.nil?
    end

  end

  class BinaryNode
    attr_accessor :data, :left, :right

    def initialize(data:, left: nil, right: nil)
      @data = data
      @left = left
      @right = right
    end

  end

end

RSpec.describe 'traverse_breadth_first' do

  it "traverse breath first" do
    TraverseBreadthFirst::BinarySearchTree.new.tap do |t|
      t.add('F')
      t.add('B')
      t.add('A')
      t.add('D')
      t.add('C')
      t.add('E')
      t.add('G')
      t.add('I')
      t.add('H')

      expect(traverse_breadth_first(t)).to eq(%w[F B G A D I C E H])
    end
  end

end
