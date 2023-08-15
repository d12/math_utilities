class Matrix
  # Adds two matrices together.
  # Handles matrices with different dimensions.
  def self.add(a, b)
    if a.length == b.length && a[0].length == b[0].length
      a.zip(b).map do |row_a, row_b|
        row_a.zip(row_b).map do |col_a, col_b|
          col_a + col_b
        end
      end
    else
      raise "Matrices have different dimensions"
    end
  end
end
