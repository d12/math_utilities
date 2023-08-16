```ruby
require 'rspec'
require_relative '../app/matrix'

RSpec.describe Matrix do
  describe ".add" do
    it "returns the sum of two matrices" do
      a = [[1, 2], [3, 4]]
      b = [[5, 6], [7, 8]]
      expected_result = [[6, 8], [10, 12]]

      result = Matrix.add(a, b)

      expect(result).to eq(expected_result)
    end

    it "raises an ArgumentError when matrices have different dimensions" do
      a = [[1, 2], [3, 4]]
      b = [[1, 2, 3], [4, 5, 6]]

      expect { Matrix.add(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
    end
  end

  describe ".subtract" do
    it "returns the difference of two matrices" do
      a = [[1, 2], [3, 4]]
      b = [[2, 1], [1, 2]]
      expected_result = [[-1, 1], [2, 2]]

      result = Matrix.subtract(a, b)

      expect(result).to eq(expected_result)
    end

    it "raises an ArgumentError when matrices have different dimensions" do
      a = [[1, 2], [3, 4]]
      b = [[1, 2, 3], [4, 5, 6]]

      expect { Matrix.subtract(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
    end
  end

  describe ".dot_product" do
    it "returns the dot product of two matrices" do
      a = [[1, 2], [3, 4]]
      b = [[5, 6], [7, 8]]
      expected_result = [[19, 22], [43, 50]]

      result = Matrix.dot_product(a, b)

      expect(result).to eq(expected_result)
    end

    it "raises an ArgumentError when matrices cannot be multiplied" do
      a = [[1, 2], [3, 4]]
      b = [[5, 6, 7], [8, 9, 10]]

      expect { Matrix.dot_product(a, b) }.to raise_error(ArgumentError, "Matrices cannot be multiplied")
    end

    it "returns the dot product of two matrices when the order is switched" do
      a = [[5, 6], [7, 8]]
      b = [[1, 2], [3, 4]]
      expected_result = [[17, 22], [23, 30]]

      result = Matrix.dot_product(a, b)

      expect(result).to eq(expected_result)
    end
  end
end
```
