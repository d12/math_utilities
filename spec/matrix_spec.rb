```ruby
require_relative '../app/matrix'

RSpec.describe Matrix do
  describe '.add' do
    context 'when matrices have the same dimensions' do
      it 'returns the sum of the matrices' do
        a = [[1, 2], [3, 4]]
        b = [[5, 6], [7, 8]]
        expected_result = [[6, 8], [10, 12]]

        result = Matrix.add(a, b)

        expect(result).to eq(expected_result)
      end
    end

    context 'when matrices have different dimensions' do
      it 'raises an ArgumentError' do
        a = [[1, 2], [3, 4]]
        b = [[5, 6, 7], [8, 9, 10]]

        expect { Matrix.add(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
      end
    end
  end

  describe '.subtract' do
    context 'when matrices have the same dimensions' do
      it 'returns the difference between the matrices' do
        a = [[5, 6], [7, 8]]
        b = [[1, 2], [3, 4]]
        expected_result = [[4, 4], [4, 4]]

        result = Matrix.subtract(a, b)

        expect(result).to eq(expected_result)
      end
    end

    context 'when matrices have different dimensions' do
      it 'raises an ArgumentError' do
        a = [[1, 2], [3, 4]]
        b = [[5, 6, 7], [8, 9, 10]]

        expect { Matrix.subtract(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
      end
    end
  end

  describe '.dot_product' do
    context 'when matrices have the valid dimensions' do
      it 'computes the dot product of the matrices' do
        a = [[1, 2], [3, 4]]
        b = [[5, 6], [7, 8]]
        expected_result = [[19, 22], [43, 50]]

        result = Matrix.dot_product(a, b)

        expect(result).to eq(expected_result)
      end
    end

    context 'when matrices have invalid dimensions' do
      it 'raises an ArgumentError' do
        a = [[1, 2, 3], [4, 5, 6]]
        b = [[7, 8], [9, 10], [11, 12]]

        expect { Matrix.dot_product(a, b) }.to raise_error(ArgumentError, "Number of columns of matrix a must match number of rows of matrix b")
      end
    end
  end
end
```
