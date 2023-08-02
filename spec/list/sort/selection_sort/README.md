# Selection sort

## Instructions

Sort array of numbers from lowest number to greatest number using
[selection sort](https://en.wikipedia.org/wiki/Selection_sort).

Algorithm: Sort an array by repeatedly finding the minimum element (ascending order) from unsorted part and putting it
at the beginning of the array.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

Sort `[5, 1, 4, 2, 8]`

Find the minimum element in sub-array indexes 1...4 and place it at index 0

```ruby
# [5, 1, 4, 2, 8] -> [1, 5, 4, 2, 8] Swap since 1 < 5
```

Find the minimum element in sub-array indexes 2...4 and place it at index 1

```ruby
# [1, 5, 4, 2, 8] -> [1, 2, 4, 5, 8] Swap since 2 < 4
```

Find the minimum element in sub-array indexes 3...4 and place it at index 2

```ruby
# [1, 2, 4, 5, 8] -> [1, 2, 4, 5, 8] No swap since 5 < 8
```
