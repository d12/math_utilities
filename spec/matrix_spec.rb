require "matrix"
require_relative "../app/matrix"

describe Matrix do
  describe ".add" do
    it "returns the sum of two matrices" do
      matrix_a = [[1, 2], [3, 4]]
      matrix_b = [[5, 6], [7, 8]]
      expected_result = [[6, 8], [10, 12]]

      result = Matrix.add(matrix_a, matrix_b)

      expect(result).to eq(expected_result)
    end

    it "raises an error if matrices have different dimensions" do
      matrix_a = [[1, 2], [3, 4]]
      matrix_b = [[5, 6, 7], [8, 9, 10]]

      expect { Matrix.add(matrix_a, matrix_b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
    end
  end

  describe ".subtract" do
    it "returns the difference of two matrices" do
      matrix_a = [[1, 2], [3, 4]]
      matrix_b = [[5, 6], [7, 8]]
      expected_result = [[-4, -4], [-4, -4]]

      result = Matrix.subtract(matrix_a, matrix_b)

      expect(result).to eq(expected_result)
    end

    it "raises an error if matrices have different dimensions" do
      matrix_a = [[1, 2], [3, 4]]
      matrix_b = [[5, 6, 7], [8, 9, 10]]

      expect { Matrix.subtract(matrix_a, matrix_b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
    end
  end
end
