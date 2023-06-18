# Linear search

## Instructions

Given list of strings and a string return index of th value in the list or `-1` if value was not found.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Limitations

Don't use any Ruby build-in methods that are directly returning index of element like `index` / `find_index`, etc.

## Examples

```ruby
get_index(%(A B C), 'A') # 0

get_index(%(A B C), 'B') # 1

get_index(%(A B C), 'D') # -1
```
