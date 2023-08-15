class Matrix
  # Adds two matrices together.
  def self.add(a, b)
    if a.size == b.size && a.all? { |row| row.size == b.first.size }
      a.zip(b).map do |row_a, row_b|
        row_a.zip(row_b).map do |col_a, col_b|
          col_a + col_b
        end
      end
    else
      raise ArgumentError, "Matrices must have the same dimensions."
    end
  end
end
