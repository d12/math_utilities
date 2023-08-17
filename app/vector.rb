class Vector

  def self.add(a, b)
    raise ArgumentError, "Vectors must have the same dimensions" if a.length != b.length

    result = []
    a.each_with_index do |element, index|
      result << element + b[index]
    end
    result
  end

  def self.subtract(a, b)
    raise ArgumentError, "Vectors must have the same dimensions" if a.length != b.length

    result = []
    a.each_with_index do |element, index|
      result << element - b[index]
    end
    result
  end
  
  def magnitude
    Math.sqrt((x**2) + (y**2))
  end
  
  def normalize
    magnitude = self.magnitude
    Vector.new(x / magnitude, y / magnitude)
  end
  
  def dot_product(vector)
    (x * vector.x) + (y * vector.y)
  end
  
  def cross_product(vector)
    (x * vector.y) - (y * vector.x)
  end
  
  def initialize(x, y)
    @x = x
    @y = y
  end
end
