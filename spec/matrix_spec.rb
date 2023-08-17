require_relative "../app/matrix"

RSpec.describe Matrix do
  describe ".add" do
    context "when matrices have the same dimensions" do
      it "returns the sum of the matrices" do
        matrix1 = [[1, 2], [3, 4]]
        matrix2 = [[5, 6], [7, 8]]
        expected_result = [[6, 8], [10, 12]]

        result = Matrix.add(matrix1, matrix2)

        expect(result).to eq(expected_result)
      end

      it "handles matrices with negative numbers" do
        matrix1 = [[-1, -2], [-3, -4]]
        matrix2 = [[-5, -6], [-7, -8]]
        expected_result = [[-6, -8],[-10, -12]]

        result = Matrix.add(matrix1, matrix2)

        expect(result).to eq(expected_result)
      end
    end
  end
end
