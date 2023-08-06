module Solution1

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
  end

end

module Solution2

  class Queue
    attr_reader :size

    def initialize
      @size = 0
      @first_node = nil
      @last_node = nil
    end

    def add(e)
      node = Node.new(e)

      if @first_node.nil?
        @first_node = node
      else
        @last_node.next = node
      end

      @size += 1
      @last_node = node
    end

    def remove
      if size > 0
        tmp = @first_node
        @first_node = @first_node.next
        @size -= 1
        tmp.data
      end
    end

    def peek
      @first_node&.data
    end

    def empty?
      @size == 0
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

module Solution3

  class Queue

    def initialize
      @primary_stack = Stack.new
      @temp_stack = Stack.new
    end

    def add(e)
      @primary_stack.add(e)
    end

    def remove
      move_to_temp_stack
      elem = @temp_stack.remove
      move_to_primary_stack
      elem
    end

    def peek
      move_to_temp_stack
      elem = @temp_stack.peek
      move_to_primary_stack
      elem
    end

    def empty?
      @primary_stack.empty?
    end

    def size
      @primary_stack.size
    end

    private

    def move_to_temp_stack
      until @primary_stack.empty?
        @temp_stack.add(
          @primary_stack.remove
        )
      end

    end

    def move_to_primary_stack
      until @primary_stack.empty?
        @temp_stack.add(
          @primary_stack.remove
        )
      end

    end

  end

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
