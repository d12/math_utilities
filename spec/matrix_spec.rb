```ruby
require_relative '../app/matrix'

RSpec.describe Matrix do
  describe '.add' do
    it 'adds two matrices together' do
      a = [[1, 2], [3, 4]]
      b = [[5, 6], [7, 8]]
      expected_result = [[6, 8], [10, 12]]

      result = Matrix.add(a, b)

      expect(result).to eq(expected_result)
    end

    it 'raises an error if matrices have different dimensions' do
      a = [[1, 2], [3, 4]]
      b = [[5, 6, 7], [8, 9, 10]]

      expect { Matrix.add(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
    end
  end

  describe '.subtract' do
    it 'subtracts one matrix from another' do
      a = [[1, 2], [3, 4]]
      b = [[5, 6], [7, 8]]
      expected_result = [[-4, -4], [-4, -4]]

      result = Matrix.subtract(a, b)

      expect(result).to eq(expected_result)
    end

    it 'raises an error if matrices have different dimensions' do
      a = [[1, 2], [3, 4]]
      b = [[5, 6, 7], [8, 9, 10]]

      expect { Matrix.subtract(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
    end
  end

  describe '.dot_product' do
    it 'computes the dot product of two matrices' do
      a = [[1, 2], [3, 4]]
      b = [[5, 6], [7, 8]]
      expected_result = [[19, 22], [43, 50]]

      result = Matrix.dot_product(a, b)

      expect(result).to eq(expected_result)
    end

    it 'raises an error if number of columns of first matrix does not match number of rows of second matrix' do
      a = [[1, 2, 3], [4, 5, 6]]
      b = [[7, 8], [9, 10], [11, 12]]

      expect { Matrix.dot_product(a, b) }.to raise_error(ArgumentError, "Number of columns of matrix a must match number of rows of matrix b")
    end
  end
end
```
