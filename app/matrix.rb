```ruby
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
    raise ArgumentError, "Incompatible matrices for multiplication" if a[0].length != b.length

    result = []
    a.each do |row_a|
      row_result = []
      b[0].length.times do |j|
        col_result = 0
        row_a.length.times do |k|
          col_result += row_a[k] * b[k][j]
        end
        row_result << col_result
      end
      result << row_result
    end
    result
  end
end
```
