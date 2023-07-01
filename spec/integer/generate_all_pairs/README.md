# Generate all pairs

## Instructions

Given positive Int `n` implement a function which returns a list of containing pairs with all combinations of numbers
from `0` to `n`. Use the custom [Pair](challenge_spec.rb) class.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

Example 1

```ruby
generate_all_pairs(0) # [Pair(0, 0)]
```

Example 2

```ruby
generate_all_pairs(1) # [Pair(0, 0), Pair(0, 1), Pair(1, 0), Pair(1, 1)]
```

Example 3

```ruby
generate_all_pairs(2) # [Pair(0, 0), Pair(0, 1), Pair(0, 2), Pair(1, 0), Pair(1, 1), Pair(1, 2), Pair(2, 0), Pair(2, 1), Pair(2, 2)]
```