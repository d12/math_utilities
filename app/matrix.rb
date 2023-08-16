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
    raise ArgumentError, "Matrices must be compatible for dot product" if a[0].length != b.length
    
    result = []
    a.each do |row_a|
      new_row = []
      b[0].length.times do |j|
        sum = 0
        row_a.each_with_index do |element, k|
          sum += element * b[k][j]
        end
        new_row << sum
      end
      result << new_row
    end
    
    result
  end
end
