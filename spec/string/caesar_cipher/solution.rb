module Solution1

  def self.caesar_cipher(str, shift)
    first_codepoint = 'a'.ord
    last_codepoint = 'z'.ord
    real_shift = shift % (last_codepoint - first_codepoint + 1)

    shifted_chars = str.codepoints.map do |cp|
      new_codepoint = cp + real_shift
      if new_codepoint > last_codepoint
        new_codepoint = (first_codepoint + (new_codepoint - last_codepoint) - 1)
      end

      new_codepoint.chr
    end

    shifted_chars.join
  end

end

module Solution2

  def self.caesar_cipher(str, shift)
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    shifted_chars = str.chars.map do |c|
      char_index = alphabet.index(c)
      new_index = (char_index + shift) % alphabet.length
      alphabet[new_index]
    end

    shifted_chars.join('')
  end

end