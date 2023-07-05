# Steps generator

## Instructions

Given a positive integer `n` implement a function which returns an array representing the generated steps with `n` levels
using the `#` character. Make sure the step has appropriate number of spaces on the right hand side!

[Challenge](challenge_spec.rb) | [solution](solution.rb)

## Examples

```ruby
generate_steps(2)
    '# '
    '##'

generate_steps(3)
    '#  '
    '## '
    '###'

generate_steps(4)
    '#   '
    '##  '
    '### '
    '####'
```