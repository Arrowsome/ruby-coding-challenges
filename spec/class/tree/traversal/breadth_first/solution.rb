module Solution1

  def self.traverse_breadth_first(tree)
    return [] if tree.empty?

    result = []
    queue = Queue.new
    queue.add(tree.root)

    until queue.empty?
      e = queue.remove

      result << e.data

      queue.add(e.left) unless e.left.nil?
      queue.add(e.right) unless e.right.nil?
    end

    result
  end

  class Queue

    def initialize
      @array = []
    end

    def add(e)
      @array << e
    end

    def remove
      @array.delete_at(0)
    end

    def empty?
      @array.empty?
    end

  end

end
