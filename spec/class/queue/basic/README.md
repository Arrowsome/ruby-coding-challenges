# Queue

## Nice to solve before

[Stack](../../stack/README.md)

## Instructions

Implement a [queue](https://en.wikipedia.org/wiki/Queue_(abstract_data_type)) data structure. Adding to the queue should store an element until it is removed. First element added to a queue will be the first that
is removed (FIFO). The queue should be a
class with methods:
- `add` method - adds element to a queue (enqueue the element)
- `remove` method - removes the element from a queue (enqueue the element)
- `peek` method - returns last element (the one that should be returned) without removing it from the queue
- `isEmpty` method - return `true` if queue is empty, otherwise return `false`

The queue can be implemented in few different ways by using different underlying data structures. Implement each of
them:
- List
- Linked list
- Two Stacks

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

Example 1

```ruby
queue = Queue.new
queue.add(1)
queue.remove # 1
queue.remove # null
```

Example 2

```ruby
queue = Queue.new
queue.empty? # true
queue.add('A')
queue.empty? # false
queue.add('B')
queue.add('C')
queue.remove # A
queue.peek # A
queue.peek # A
queue.remove # B
queue.remove # C
queue.remove # null
```