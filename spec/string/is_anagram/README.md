# Is anagram

## Instructions

Given two strings, implement a function to determine if the second string is an anagram of the first. An anagram is a
word, phrase, or name formed by rearranging the letters of another, such as `cinema`, formed from `iceman`. Only
consider characters, not spaces or punctuation. Consider capital letters to be the same as lower case.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

```ruby
anagrams?('rail safety', 'fairy tales') # true

anagrams?('RAIL! SAFETY!', 'fairy tales') # true

anagrams?('Hi there', 'Bye there') # false
```

## Hints

<details>
<summary>Hint 1</summary>
Use frequency counter.
</details>
