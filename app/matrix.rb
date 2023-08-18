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

  # Computes the dot product of two matrices.
  def self.dot_product(a, b)
    raise ArgumentError, "Incompatible dimensions for dot product calculation" if a[0].length != b.length

    result = Array.new(a.length) { Array.new(b[0].length, 0) }

    a.length.times do |i|
      b[0].length.times do |j|
        a[0].length.times do |k|
          result[i][j] += a[i][k] * b[k][j]
        end
      end
    end

    result
  end

  # Test cases for dot_product method
  def self.test_dot_product
    # Test case with compatible dimensions
    a = [[1, 2], [3, 4]]
    b = [[5, 6], [7, 8]]
    expected_result = [[19, 22], [43, 50]]
    raise "Test Failed!" if dot_product(a, b) != expected_result

    # Test case with incompatible dimensions
    c = [[1, 2, 3], [4, 5, 6]]
    d = [[1, 2], [3, 4]]
    begin
      dot_product(c, d)
    rescue ArgumentError => e
      raise "Test Failed!" unless e.message == "Incompatible dimensions for dot product calculation"
    end

    # Add additional edge cases test here...

    puts "All test cases passed!"
  end
end

Matrix.test_dot_product
