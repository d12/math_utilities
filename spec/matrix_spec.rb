require_relative "../app/matrix"

RSpec.describe Matrix do
  describe ".add" do
    it "returns the sum of two matrices" do
      matrix_1 = [
        [1, 2, 3],
        [4, 5, 6]
      ]
      matrix_2 = [
        [7, 8, 9],
        [10, 11, 12]
      ]
      expected_result = [
        [8, 10, 12],
        [14, 16, 18]
      ]
      result = Matrix.add(matrix_1, matrix_2)
      expect(result).to eq(expected_result)
    end

    it "raises an ArgumentError if matrices have different dimensions" do
      matrix_1 = [
        [1, 2],
        [3, 4]
      ]
      matrix_2 = [
        [1, 2, 3],
        [4, 5, 6]
      ]
      expect { Matrix.add(matrix_1, matrix_2) }.to raise_error(ArgumentError)
    end
  end

  describe ".subtract" do
    it "returns the difference between two matrices" do
      matrix_1 = [
        [1, 2, 3],
        [4, 5, 6]
      ]
      matrix_2 = [
        [7, 8, 9],
        [10, 11, 12]
      ]
      expected_result = [
        [-6, -6, -6],
        [-6, -6, -6]
      ]
      result = Matrix.subtract(matrix_1, matrix_2)
      expect(result).to eq(expected_result)
    end

    it "raises an ArgumentError if matrices have different dimensions" do
      matrix_1 = [
        [1, 2],
        [3, 4]
      ]
      matrix_2 = [
        [1, 2, 3],
        [4, 5, 6]
      ]
      expect { Matrix.subtract(matrix_1, matrix_2) }.to raise_error(ArgumentError)
    end
  end
end
