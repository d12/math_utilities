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
    raise ArgumentError, "Matrices cannot be multiplied" if b.length != a[0].length
    
    result = []
    
    (0...a.length).each do |i|
      row = []
      
      (0...b[0].length).each do |j|
        sum = 0
        
        (0...b.length).each do |k|
          sum += a[i][k] * b[k][j]
        end
        
        row << sum
      end
      
      result << row
    end
    
    result
  end
end
