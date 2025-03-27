class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter[2..])
    end

    num_list = numbers.split(/#{delimiter}/).map(&:to_i)

    negatives = num_list.select { |num| num < 0 }

    unless negatives.empty?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end

    num_list.sum
  end
end
