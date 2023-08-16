require_relative "../app/matrix"

RSpec.describe Matrix do
  describe ".add" do
    context "when matrices have the same dimensions" do
      it "returns the sum of the matrices" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6], [7, 8]]
        expected_result = [[6, 8], [10, 12]]
        expect(Matrix.add(a, b)).to eq(expected_result)
      end
    end

    context "when matrices have different dimensions" do
      it "raises an ArgumentError" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6]]
        expect { Matrix.add(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
      end
    end
  end

  describe ".subtract" do
    context "when matrices have the same dimensions" do
      it "returns the difference of the matrices" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6], [7, 8]]
        expected_result = [[-4, -4], [-4, -4]]
        expect(Matrix.subtract(a, b)).to eq(expected_result)
      end
    end

    context "when matrices have different dimensions" do
      it "raises an ArgumentError" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6]]
        expect { Matrix.subtract(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
      end
    end
  end
end
