require "rspec"

require_relative "../app/matrix"

describe Matrix do
  describe ".add" do
    it "adds two matrices" do
      a = [[1, 2], [3, 4]]
      b = [[2, 3], [4, 5]]
      c = [[3, 5], [7, 9]]
      expect(Matrix.add(a, b)).to eq(c)
    end
  end
end
