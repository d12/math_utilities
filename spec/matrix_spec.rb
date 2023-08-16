require 'rspec'
require_relative '../app/matrix'

RSpec.describe Matrix do
  describe ".add" do
    context "when given matrices of the same dimensions" do
      it "returns the sum of the matrices" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6], [7, 8]]
        expected_result = [[6, 8], [10, 12]]

        result = Matrix.add(a, b)

        expect(result).to eq(expected_result)
      end
    end

    context "when given matrices of different dimensions" do
      it "raises an ArgumentError" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6, 7], [8, 9, 10]]

        expect { Matrix.add(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
      end
    end
  end

  describe ".subtract" do
    context "when given matrices of the same dimensions" do
      it "returns the difference of the matrices" do
        a = [[5, 6], [7, 8]]
        b = [[1, 2], [3, 4]]
        expected_result = [[4, 4], [4, 4]]

        result = Matrix.subtract(a, b)

        expect(result).to eq(expected_result)
      end
    end

    context "when given matrices of different dimensions" do
      it "raises an ArgumentError" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6, 7], [8, 9, 10]]

        expect { Matrix.subtract(a, b) }.to raise_error(ArgumentError, "Matrices must have the same dimensions")
      end
    end
  end

  describe ".dot_product" do
    context "when given matrices that can be multiplied" do
      it "returns the dot product of the matrices" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6], [7, 8]]
        expected_result = [[19, 22], [43, 50]]

        result = Matrix.dot_product(a, b)

        expect(result).to eq(expected_result)
      end
    end

    context "when given matrices that cannot be multiplied" do
      it "raises an ArgumentError" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6, 7], [8, 9, 10]]

        expect { Matrix.dot_product(a, b) }.to raise_error(ArgumentError, "Matrices cannot be multiplied")
      end
    end
  end
end
