class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = extract_delimiter(numbers)
    numbers_array = extract_numbers(numbers, delimiter)

    validate_negative_numbers(numbers_array)

    # Ignore numbers greater than 1000
    valid_numbers = numbers_array.select { |num| num <= 1000 }

    valid_numbers.reduce(:+)
  end

  private

  def self.extract_delimiter(numbers)
    # Check if a custom delimiter is specified
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[(numbers.index("\n") + 1)..-1]
    else
      delimiter = ","
    end

    delimiter
  end

  def self.extract_numbers(numbers, delimiter)
    # Split the input string into an array of numbers using the specified delimiter and newline
    numbers.split(/#{delimiter}|\n/).map(&:to_i)
  end

  def self.validate_negative_numbers(numbers)
    negative_numbers = numbers.select { |num| num.negative? }
    raise "Negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?
  end
end