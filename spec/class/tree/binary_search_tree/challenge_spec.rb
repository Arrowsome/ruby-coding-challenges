require_relative 'solution'

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

    # raise NotImplementedError
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
    raise NotImplementedError
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

RSpec.describe 'binary_search_tree' do
  subject { Solution1::BinarySearchTree.new }

  it "build valid binary search tree" do
    # ----------Tree------------
    #
    #           6
    #         /   \
    #        3     8
    #       / \   / \
    #      1   5 7   9
    #
    # --------------------------

    subject.tap do |t|
      t.add(6)
      t.add(3)
      t.add(8)
      t.add(5)
      t.add(7)
      t.add(1)
      t.add(9)

      expect(t.root&.data).to eq(6)
      expect(t.root&.left&.data).to eq(3)
      expect(t.root&.left&.left&.data).to eq(1)
      expect(t.root&.left&.left&.left).to eq(nil)
      expect(t.root&.left&.left&.right).to eq(nil)
      expect(t.root&.left&.right&.data).to eq(5)
      expect(t.root&.left&.right&.left).to eq(nil)
      expect(t.root&.left&.right&.right).to eq(nil)
      expect(t.root&.right&.data).to eq(8)
      expect(t.root&.right&.left&.data).to eq(7)
      expect(t.root&.right&.left&.left).to eq(nil)
      expect(t.root&.right&.left&.right).to eq(nil)
      expect(t.root&.right&.right&.data).to eq(9)
      expect(t.root&.right&.right&.left).to eq(nil)
      expect(t.root&.right&.right&.right).to eq(nil)
    end
  end

  it "duplicated value is not added" do
    # ----------Tree------------
    #
    #           6
    #         /   \
    #        3     8
    #
    # --------------------------

    subject.tap do |t|
      t.add(6)
      t.add(3)
      t.add(8)
      t.add(6)
      t.add(3)
      t.add(8)

      expect(t.root&.data).to eq(6)
      expect(t.root&.left&.data).to eq(3)
      expect(t.root&.left&.left).to eq(nil)
      expect(t.root&.left&.right).to eq(nil)
      expect(t.root&.right&.data).to eq(8)
      expect(t.root&.right&.left).to eq(nil)
      expect(t.root&.right&.right).to eq(nil)
    end
  end

  it "tree contains all elements" do
    # ----------Tree------------
    #
    #           6
    #         /   \
    #        3     8
    #       / \   / \
    #      1   5 7   9
    #
    # --------------------------

    subject.tap do |t|
      t.add(6)
      t.add(3)
      t.add(8)
      t.add(5)
      t.add(7)
      t.add(1)
      t.add(9)

      expect(t.contains?(6)).to eq(true)
      expect(t.contains?(3)).to eq(true)
      expect(t.contains?(8)).to eq(true)
      expect(t.contains?(5)).to eq(true)
      expect(t.contains?(7)).to eq(true)
      expect(t.contains?(1)).to eq(true)
      expect(t.contains?(9)).to eq(true)
      expect(t.contains?(100)).to eq(false)
    end
  end
end
