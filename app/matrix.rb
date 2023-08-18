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
    raise ArgumentError, "Matrices must have compatible dimensions for dot product" if a[0].length != b.length
    
    result = []
    
    a.each do |row_a|
      row_result = []
      
      b.transpose.each do |col_b|
        dot_product = 0
        
        row_a.each_with_index do |elem_a, i|
          dot_product += elem_a * col_b[i]
        end
        
        row_result << dot_product
      end
      
      result << row_result
    end
    
    result
  end
end
