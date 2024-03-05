# spec/string_calculator_spec.rb

require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    context 'when given an empty string' do
      it 'returns 0' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context 'when given a single number' do
      it 'returns the same number' do
        expect(StringCalculator.add('5')).to eq(5)
      end
    end

    context 'when given two numbers separated by a comma' do
      it 'returns the sum of the two numbers' do
        expect(StringCalculator.add('2,3')).to eq(5)
      end
    end

    context 'when given multiple numbers' do
      it 'returns the sum of all numbers' do
        expect(StringCalculator.add('1,2,3,4,5')).to eq(15)
      end
    end

    context 'when new lines between numbers' do
      it 'treats new lines as delimiters and returns the sum' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context 'when a custom delimiter is specified' do
      it 'uses the custom delimiter and returns the sum' do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context 'when given negative numbers' do
      it 'throws an exception with the negative numbers in the message' do
        expect { StringCalculator.add('1,-2,-3,4') }.to raise_error("Negative numbers not allowed: -2, -3")
      end
    end

    context 'when numbers are greater than 1000' do
      it 'ignores numbers greater than 1000 and returns the sum' do
        expect(StringCalculator.add('2,1001,3')).to eq(5)
      end
    end

    # Add more test cases as needed for different scenarios

  end
end