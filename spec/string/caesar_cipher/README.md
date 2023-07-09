# Caesar Cipher

## Instructions

Given a string and integer `shift` implement a function which shifts each character in that string by `shift` amount ([cesar cipher](https://cryptii.com/pipes/caesar-cipher)) eg. if shift is `1` then `a` becomes `b`, `c` becomes`d`, `z`
became `a` etc. Allowed input is string containing only lowercase characters from alphabet `abcdefghijklmnopqrstuvwxyz`.

[Challenge](challenge_spec.rb) | [Solution](solution.rb)

## Examples

```ruby
caesar_cipher("abc", 1) # bcd

caesar_cipher("abc", 3) # def

caesar_cipher("xyz", 1) # yza
```

## Hints

<details>
<summary>Hint 1</summary>
Use <a href="http://sticksandstones.kstrom.com/appen.html">ASCI character table</a>
</details>
