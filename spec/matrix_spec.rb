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
    end

    context "when one matrix is empty" do
      it "returns the other matrix" do
        matrix1 = [[1, 2], [3, 4]]
        matrix2 = []

        result = Matrix.add(matrix1, matrix2)

        expect(result).to eq(matrix1)
      end
    end
  end

  describe ".subtract" do
    context "when matrices have the same dimensions" do
      it "returns the difference between the matrices" do
        matrix1 = [[5, 6], [7, 8]]
        matrix2 = [[1, 2], [3, 4]]
        expected_result = [[4, 4], [4, 4]]

        result = Matrix.subtract(matrix1, matrix2)

        expect(result).to eq(expected_result)
      end
    end

    context "when one matrix is empty" do
      it "returns the negation of the other matrix" do
        matrix1 = [[1, 2], [3, 4]]
        matrix2 = []

        result = Matrix.subtract(matrix1, matrix2)

        expect(result).to eq([[-1, -2], [-3, -4]])
      end
    end
  end
end
