class Matrix
  def self.subtract(matrix1, matrix2)
    unless matrix1.length == matrix2.length && matrix1[0].length == matrix2[0].length
      raise ArgumentError, "Matrices must have the same dimensions"
    end

    result = []
    matrix1.length.times do |i|
      row = []
      matrix1[i].length.times do |j|
        row << matrix1[i][j] - matrix2[i][j]
      end
      result << row
    end

    result
  end
end
