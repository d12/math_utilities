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

  def self.multiply(a, b)
    raise ArgumentError, "Number of columns in the first matrix should be equal to the number of rows in the second matrix" if a[0].length != b.length
  
    result = Array.new(a.length) { Array.new(b[0].length, 0) }
  
    a.each_with_index do |row_a, i|
      b[0].length.times do |j|
        result[i][j] = row_a.enum_for(:each_with_index).sum { |col_a, k| col_a * b[k][j] }
      end
    end
  
    result
  end

  def self.transpose(matrix)
    matrix.transpose
  end
end
