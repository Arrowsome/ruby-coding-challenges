module Solution1

  def self.longest_word(str)
    longest = ''
    str.gsub(/[^a-zA-Z0-9\\s]/, ' ').split(' ').reject(&:empty?).each do |w|
      if w.length > longest.length
        longest = w
      end
    end
    longest
  end

end