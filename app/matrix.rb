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
