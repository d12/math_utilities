require "matrix"

RSpec.describe Matrix do
  describe "#add" do
    it "should add two matrices correctly" do
      matrix1 = Matrix[[1, 2], [3, 4]]
      matrix2 = Matrix[[2, 3], [4, 5]]
      expected_result = Matrix[[3, 5], [7, 9]]

      result = Matrix.add(matrix1, matrix2)

      expect(result).to eq(expected_result)
    end

    it "should add two matrices with negative numbers correctly" do
      matrix1 = Matrix[[1, -2], [-3, 4]]
      matrix2 = Matrix[[-2, 3], [4, -5]]
      expected_result = Matrix[[-1, 1], [1, -1]]

      result = Matrix.add(matrix1, matrix2)

      expect(result).to eq(expected_result)
    end
  end
end
