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

######################

## NEW TEST CASE ##
test 'when adding two matrices, it returns the correct result' do
  matrix1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  matrix2 = [[9, 8, 7], [6, 5, 4], [3, 2, 1]]
  expected_result = [[10, 10, 10], [10, 10, 10], [10, 10, 10]]

  result = Matrix.add(matrix1, matrix2)

  assert_equal(expected_result, result)
end
######################
