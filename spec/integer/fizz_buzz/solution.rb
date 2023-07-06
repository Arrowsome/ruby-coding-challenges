module Solution1

  def self.fizz_buzz(n)
    (1..n).map do |i|
      case
      when (i % 3 == 0) && (i % 5 == 0)
        'FizzBuzz'
      when i % 3 == 0
        'Fizz'
      when i % 5 == 0
        'Buzz'
      else
        i
      end
    end
  end

end