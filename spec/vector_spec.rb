require_relative "../app/vector"

RSpec.describe Vector do
  describe ".add" do
    context "when vectors have the same dimensions" do
      it "returns the sum of the vectors" do
        vector1 = [1, 2, 3]
        vector2 = [4, 5, 6]
        expected_result = [5, 7, 9]

        result = Vector.add(vector1, vector2)

        expect(result).to eq(expected_result)
      end
    end

    context "when vectors have different dimensions" do
      it "raises an ArgumentError" do
        vector1 = [1, 2, 3]
        vector2 = [4, 5]

        expect { Vector.add(vector1, vector2) }.to raise_error(ArgumentError, "Vectors must have the same dimensions")
      end
    end
  end

  describe ".subtract" do
    context "when vectors have the same dimensions" do
      it "returns the difference between the vectors" do
        vector1 = [5, 6, 7]
        vector2 = [1, 2, 3]
        expected_result = [4, 4, 4]

        result = Vector.subtract(vector1, vector2)

        expect(result).to eq(expected_result)
      end
    end

    context "when vectors have different dimensions" do
      it "raises an ArgumentError" do
        vector1 = [1, 2, 3]
        vector2 = [4, 5]

        expect { Vector.subtract(vector1, vector2) }.to raise_error(ArgumentError, "Vectors must have the same dimensions")
      end
    end
  end
end
