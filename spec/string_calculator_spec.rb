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

    # Add more test cases as needed for different scenarios

  end
end