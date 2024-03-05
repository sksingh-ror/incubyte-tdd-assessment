class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    # Split the input string into an array of numbers
    numbers_array = numbers.split(",")

    # Convert each string element to an integer and sum them up
    sum = numbers_array.map(&:to_i).reduce(:+)

    sum
  end
end