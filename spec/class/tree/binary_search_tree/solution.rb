module Solution1

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
