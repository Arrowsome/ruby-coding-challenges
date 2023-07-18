# Spiral matrix generator

## Instructions

Given integer `n` implement a function which generates a spiral numbers matrix (size `n` x `n`). Numbers in matrix are
placed according to spiral - starting top left corner and then go right, down, left, up, right...

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

Example 1

```ruby
generate_spiral(2)
   [[1, 2],
   [4, 3]]
```

Example 2

```ruby
generate_spiral(3)
   [[1, 2, 3],
   [8, 9, 4],
   [7, 6, 5]]
```

Example 3

```ruby
generate_spiral(4)
   [[1,   2,  3, 4],
   [12, 13, 14, 5],
   [11, 16, 15, 6],
   [10,  9,  8, 7]]
```
