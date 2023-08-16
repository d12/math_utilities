require "matrix"

class Matrix
  def self.add(a, b)
    matrix_a = Matrix[*a]
    matrix_b = Matrix[*b]
    raise ArgumentError, "Matrices must have the same dimensions" if matrix_a.row_count != matrix_b.row_count || matrix_a.column_count != matrix_b.column_count

    (matrix_a + matrix_b).to_a
  end

  def self.subtract(a, b)
    matrix_a = Matrix[*a]
    matrix_b = Matrix[*b]
    raise ArgumentError, "Matrices must have the same dimensions" if matrix_a.row_count != matrix_b.row_count || matrix_a.column_count != matrix_b.column_count

     (matrix_a - matrix_b).to_a
  end
end
