require "math_utilities"

RSpec.describe MathUtilities do
  describe ".add" do
    it "adds two numbers correctly" do
      result = MathUtilities.add(2, 3)
      expect(result).to eq(5)
    end
  end

  describe ".subtract" do
    it "subtracts two numbers correctly" do
      result = MathUtilities.subtract(5, 3)
      expect(result).to eq(2)
    end
  end

  describe ".multiply" do
    it "multiplies two numbers correctly" do
      result = MathUtilities.multiply(2, 3)
      expect(result).to eq(6)
    end
  end

  describe ".divide" do
    it "divides two numbers correctly" do
      result = MathUtilities.divide(6, 3)
      expect(result).to eq(2)
    end

    it "raises an error when dividing by zero" do
      expect { MathUtilities.divide(10, 0) }.to raise_error(ZeroDivisionError)
    end
  end
end
