module Solution1

  def self.combine(queue1, queue2)
    cq = CombineQueues::Queue.new
    loop do
      cq.add(queue1.remove) if queue1.peek
      cq.add(queue2.remove) if queue2.peek

      break if queue1.empty? && queue2.empty?
    end
    cq
  end

end