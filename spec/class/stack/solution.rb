module Solution1
  class Stack

    def initialize
      @array = []
    end

    def add(e)
      @array << e
    end

    def remove
      @array.pop
    end

    def peek
      @array.last
    end

    def empty?
      @array.empty?
    end

    def size
      @array.length
    end

  end
end

module Solution2
  class Stack
    attr_reader :size

    def initialize
      @first_node = nil
      @size = 0
    end

    def add(e)
      node = Node.new(e)

      if @first_node.nil?
        @first_node = node
      else
        node.next = @first_node
        @first_node = node
      end

      @size += 1
    end

    def remove
      if size > 0
        tmp = @first_node.data
        @first_node = @first_node&.next
        @size -= 1
        tmp
      end
    end

    def peek
      @first_node&.data
    end

    def empty?
      size == 0
    end

  end

  class Node

    attr_accessor :data, :next

    def initialize(data)
      @data = data
      @next = nil
    end

  end
end