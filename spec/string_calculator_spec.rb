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
  end
end
