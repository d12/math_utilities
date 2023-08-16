class Vector
  attr_reader :elements

  def initialize(elements)
    @elements = elements
  end

  def self.add(a, b)
    raise ArgumentError, "Vectors must have the same dimensions" if a.length != b.length

    result = []
    a.each_with_index do |element, index|
      result << element + b[index]
    end
    Vector.new(result)
  end

  def self.subtract(a, b)
    raise ArgumentError, "Vectors must have the same dimensions" if a.length != b.length

    result = []
    a.each_with_index do |element, index|
      result << element - b[index]
    end
    Vector.new(result)
  end
end
