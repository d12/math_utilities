class Matrix
  # Adds two matrices together.
  def self.add(a, b)
    if a.length != b.length || a[0].length != b[0].length
      raise ArgumentError, "Matrices must have the same dimensions"
    end

    a.zip(b).map do |row_a, row_b|
      row_a.zip(row_b).map do |col_a, col_b|
        col_a + col_b
      end
    end
  end
end