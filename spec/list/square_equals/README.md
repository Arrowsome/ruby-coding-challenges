# Square equals

## Instructions

Given two arrays of integers implement a function which returns `true` if every value in the first array has it's
corresponding value squared in the second array. The frequency of values must be the same eg. if there are two values in
first array, two exactly two squared values must exist in second array.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

```ruby
square_equals?([2], [4]) # true

square_equals?([1, 2, 3], [9, 1, 4]) # true

square_equals?([1, 2, 3], [9, 1, 7]) # false (does not have square of 2)

square_equals?([1, 2, 3], [9, 1]) # false (does not have square of 2)

square_equals?([1, 2, 1], [4, 1, 4]) # false (frequency must be the same)
```

## Hints

<details>
<summary>Hint 1</summary>
Use frequency counter.
</details>
