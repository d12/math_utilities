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

  # Multiplies two matrices together.
  def self.multiply(a, b)
    raise ArgumentError, "Cannot multiply matrices with incompatible dimensions" if a[0].length != b.length

    result = Array.new(a.length) { Array.new(b[0].length, 0) }

    (0...a.length).each do |row|
      (0...b[0].length).each do |col|
        (0...b.length).each do |i|
          result[row][col] += a[row][i] * b[i][col]
        end
      end
    end

    result
  end
end
