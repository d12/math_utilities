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
    raise ArgumentError, "Invalid matrix dimensions" if a[0].length != b.length

    result = Array.new(a.length) { Array.new(b[0].length, 0) }
    for i in 0...a.length
      for j in 0...b[0].length
        for k in 0...a[0].length
          result[i][j] += a[i][k] * b[k][j]
        end
      end
    end
    result
  end
end
