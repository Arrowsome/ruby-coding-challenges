# Decapitalize const

## Instructions

Given a string representing constant name (upper case words
separated by underscore eg `FOO_BAR`) implement a function which
converts it into camel case name (eg. `fooBar`):
- convert first word to lowercase
- convert next words to lowercase, but first character is still uppercase
- remove all underscore characters

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

```ruby
decapitalize_const("FOO") # foo

decapitalize_const("FOO_BAR") # fooBar

decapitalize_const("__FOO_BAR_BAZ") # fooBarBaz
```

