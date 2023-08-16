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
    raise ArgumentError, "Number of columns in matrix A must match number of rows in matrix B" if a[0].length != b.length

    result = []
    
    a.each do |row_a|
      new_row = []
      b.transpose.each do |col_b|
        new_row << row_a.zip(col_b).map { |x, y| x * y }.inject(:+)
      end
      result << new_row
    end
    
    result
  end
end
