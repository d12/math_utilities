require_relative "../app/matrix"

RSpec.describe Matrix do
  describe ".add" do
    context "when both matrices are non-empty" do
      it "adds the corresponding elements of the matrices" do
        matrix1 = [[1, 2], [3, 4]]
        matrix2 = [[5, 6], [7, 8]]
        expected_result = [[6, 8], [10, 12]]

        result = Matrix.add(matrix1, matrix2)

        expect(result).to eq(expected_result)
      end
    end

    context "when one matrix is empty" do
      it "returns the non-empty matrix" do
        matrix1 = [[1, 2], [3, 4]]
        matrix2 = []

        expect(Matrix.add(matrix1, matrix2)).to eq(matrix1)
      end
    end

    context "when the matrices have different dimensions" do
      it "raises an ArgumentError" do
        matrix1 = [[1, 2], [3, 4]]
        matrix2 = [[5, 6, 7], [8, 9, 10]]

        expect {
          Matrix.add(matrix1, matrix2)
        }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
      end
    end
  end

  describe ".subtract" do
    # existing test cases for .subtract method
  end
end
