# Get duplicated arguments

## Instructions

Given variable number of arguments (strings) checks whether there are any duplicates among the arguments and return 
array of all unique duplicates. If no arguments are passes return empty array.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

```ruby
get_duplicated_arguments("a", "b", "c") # empty list

get_duplicated_arguments("a", "b", "c", "a") # [a]
```

## Hints

<details>
<summary>Hint 1</summary>
Use frequency counter or multiple pointers pattern.
</details>
