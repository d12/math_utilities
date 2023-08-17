require_relative "../app/vector"

RSpec.describe Vector do
  describe "#magnitude" do
    it "returns the magnitude of the vector" do
      vector = Vector.new(3, 4)

      result = vector.magnitude

      expect(result).to eq(5)
    end
  end

  describe "#normalize" do
    it "returns a normalized vector" do
      vector = Vector.new(3, 4)
      expected_result = Vector.new(0.6, 0.8)

      result = vector.normalize

      expect(result.x).to be_within(0.001).of(expected_result.x)
      expect(result.y).to be_within(0.001).of(expected_result.y)
    end
  end

  describe "#dot_product" do
    it "returns the dot product of two vectors" do
      vector1 = Vector.new(2, 3)
      vector2 = Vector.new(4, -1)
      expected_result = 5

      result = vector1.dot_product(vector2)

      expect(result).to eq(expected_result)
    end
  end

  describe "#cross_product" do
    it "returns the cross product of two vectors" do
      vector1 = Vector.new(2, 3)
      vector2 = Vector.new(4, -1)
      expected_result = -11

      result = vector1.cross_product(vector2)

      expect(result).to eq(expected_result)
    end
  end

  describe "#initialize" do
    it "correctly initializes the vector with given coordinates" do
      vector = Vector.new(3, 4)

      expect(vector.x).to eq(3)
      expect(vector.y).to eq(4)
    end
  end
end
