
require_relative '../app/math_utilities'

RSpec.describe MathUtilities do
  describe ".factorial" do
    context "when given a positive integer" do
      it "returns the factorial of the number" do
        expect(MathUtilities.factorial(5)).to eq(120)
      end
    end

    context "when given 0" do
      it "returns 1" do
        expect(MathUtilities.factorial(0)).to eq(1)
      end
    end
  end

  describe ".quadratic_solver" do
    context "when given valid coefficients" do
      it "returns the correct solutions" do
        expect(MathUtilities.quadratic_solver(1, -3, 2)).to eq([1, 2])
      end
    end

    context "when given coefficients with no real solutions" do
      it "returns an empty array" do
        expect(MathUtilities.quadratic_solver(1, 1, 1)).to eq([])
      end
    end
  end

  describe ".mean" do
    context "when given a list of numbers" do
      it "returns the arithmetic mean of the numbers" do
        expect(MathUtilities.mean([1, 2, 3, 4, 5])).to eq(3)
      end
    end
  end

  describe ".standard_deviation" do
    context "when given a list of numbers" do
      it "returns the standard deviation of the numbers" do
        expect(MathUtilities.standard_deviation([1, 2, 3, 4, 5])).to eq(1.4142135623730951)
      end
    end
  end
end
