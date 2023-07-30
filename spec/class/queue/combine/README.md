# Combine two queues

## Instructions

Given two queues implement a function which combines the contents of each queue into third queue. The third queue should
contain the content of the two queues. The function should handle queues of different lengths without inserting `null`
into the new one. Take into consideration the fact that both queues may be of different length. IntQueue can only expose
`add`, `remove`, and `peek` methods to external clients.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

```ruby
queue_one = Queue.new
queue_one.add(1)
queue_one.add(2)

queue_two = Queue.new
queue_two.add('Hi')
queue_two.add('There')

queue_three = combine(queue_one, queue_two)
queue_three.remove # 1
queue_three.remove # 'Hi'
queue_three.remove # 2
queue_three.remove # 'There'
```
