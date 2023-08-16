
class MathUtilities
  def self.factorial(n)
    (1..n).reduce(1, :*)
  end

  def self.quadratic_solver(a, b, c)
    discriminant = b**2 - 4 * a * c
    if discriminant >= 0
      x1 = (-b + Math.sqrt(discriminant)) / (2 * a)
      x2 = (-b - Math.sqrt(discriminant)) / (2 * a)
      [x1, x2]
    else
      []
    end
  end

  def self.mean(numbers)
    sum = numbers.reduce(0, :+)
    sum.to_f / numbers.length
  end

  def self.standard_deviation(numbers)
    mean = self.mean(numbers)
    sum = numbers.map { |x| (x - mean) ** 2 }.reduce(0, :+)
    Math.sqrt(sum / numbers.length)
  end
end
