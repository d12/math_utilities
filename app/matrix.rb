class Matrix
  # Adds two matrices together.
  def self.add(a, b)
    raise ArgumentError, "Matrices must have the same dimensions" if a.length != b.length || a[0].length != b[0].length

    result = Array.new(a.length) { Array.new(a[0].length) }

    (0...a.length).each do |i|
      (0...a[0].length).each do |j|
        result[i][j] = a[i][j] + b[i][j]
      end
    end

    result
  end
end
