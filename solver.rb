class Solver
  def factorial(num)
    raise 'Only numbers are accepted' unless num.is_a?(Integer)
    raise 'num has to be >= 0' if num.negative?
    return 1 if num.zero?

    (1..num).inject(:*)
  end

  def reverse(word)
    raise 'Only String values are accepted' unless word.is_a?(String)

    r_word = ''
    word.each_char { |char| r_word = char << r_word }
    r_word
  end

  def fizzbuzz(num)
    raise 'Only numbers are accepted' unless num.is_a?(Integer)

    if (num % 5).zero? && (num % 3).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'

    else
      num.to_s
    end
  end
end
