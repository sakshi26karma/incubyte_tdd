require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  before do
    @calculator = StringCalculator.new
  end

  describe "#add" do
    it "returns 0 for an empty string" do
      expect(@calculator.add("")).to eq(0)
    end

    it "returns the number itself when only one number is given" do
        expect(@calculator.add("5")).to eq(5)
    end

    it "returns the sum of two numbers" do
        expect(@calculator.add("1,5")).to eq(6)
    end

    it "returns the sum of multiple numbers" do
        expect(@calculator.add("1,2,3,4")).to eq(10)
    end

    it "handles newlines b\w numbers" do
        expect(@calculator.add("1\n2,3")).to eq(6)
    end

    it "handles custom delimiters" do
        expect(@calculator.add("//;\n1;2")).to eq(3)
    end

  end
end
