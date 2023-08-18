class Matrix
  # Adds two matrices together.
  def self.add(a, b)
    raise ArgumentError, "Matrices must have the same dimensions" if a.length != b.length || a[0].length != b[0].length

    a.zip(b).map do |row_a, row_b|
      row_a.zip(row_b).map do |col_a, col_b|
        col_a + col_b
      end
    end
  end

  # Subtracts one matrix from another.
  def self.subtract(a, b)
    raise ArgumentError, "Matrices must have the same dimensions" if a.length != b.length || a[0].length != b[0].length

    a.zip(b).map do |row_a, row_b|
      row_a.zip(row_b).map do |col_a, col_b|
        col_a - col_b
      end
    end
  end
end

require_relative 'matrix.rb'

RSpec.describe Matrix do
  describe 'dot_product' do
    it 'should compute the dot product correctly with compatible dimensions' do
      # Test case with compatible dimensions
      a = [[1, 2], [3, 4]]
      b = [[5, 6], [7, 8]]
      expected_result = [[19, 22], [43, 50]]
      expect(Matrix.dot_product(a, b)).to eq(expected_result)
    end

    it 'should raise ArgumentError for incompatible dimensions' do
      # Test case with incompatible dimensions
      c = [[1, 2, 3], [4, 5, 6]]
      d = [[1, 2], [3, 4]]
      expect { Matrix.dot_product(c, d) }.to raise_error(ArgumentError, "Incompatible dimensions for dot product calculation")
    end

    # Add additional edge cases test here...

  end
end

Matrix.test_dot_product
