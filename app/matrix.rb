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

  # Calculates the dot product of two matrices.
  def self.dot_product(a, b)
    raise ArgumentError, "Matrices must have compatible dimensions" if a[0].length != b.length

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
end
