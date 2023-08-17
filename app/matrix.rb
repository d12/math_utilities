```ruby
class Matrix
  # Adds two matrices together.
  def self.add(a, b)
    raise ArgumentError, "Matrices must have the same dimensions" if a.length != b.length || a[0].length != b[0].length
    
    result = Array.new(a.length) { Array.new(b[0].length, 0) }

    a.length.times do |i|
      a[0].length.times do |j|
        result[i][j] = a[i][j] + b[i][j]
      end
    end

    result
  end

  # Subtracts one matrix from another.
  def self.subtract(a, b)
    raise ArgumentError, "Matrices must have the same dimensions" if a.length != b.length || a[0].length != b[0].length

    result = Array.new(a.length) { Array.new(b[0].length, 0) }
    
    a.length.times do |i|
      a[0].length.times do |j|
        result[i][j] = a[i][j] - b[i][j]
      end
    end
    
    result
  end

  # Computes the dot product of two matrices.
  def self.dot_product(a, b)
    raise ArgumentError, "Number of columns of matrix a must match number of rows of matrix b" if a[0].length != b.length

    result = Array.new(a.length) { Array.new(b[0].length, 0) }

    a.each_with_index do |row_a, i|
      b[0].length.times do |j|
        b.length.times do |k|
          result[i][j] += a[i][k] * b[k][j]
        end
      end
    end

    result
  end
end
```

replace spec/matrix_spec.rb
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
