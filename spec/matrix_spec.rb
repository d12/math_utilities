RSpec.describe Matrix do
  describe ".dot_product" do
    context "when the matrices have compatible dimensions" do
      it "computes the dot product of two matrices" do
        a = [[1, 2],
             [3, 4],
             [5, 6]]

        b = [[7, 8, 9],
             [10, 11, 12]]

        result = Matrix.dot_product(a, b)

        expected_result = [[27, 30, 33],
                           [61, 68, 75],
                           [95, 106, 117]]

        expect(result).to eq(expected_result)
      end
    end

    context "when the number of columns in matrix A doesn't match the number of rows in matrix B" do
      it "raises an ArgumentError" do
        a = [[1, 2, 3],
             [4, 5, 6]]

        b = [[7, 8],
             [9, 10],
             [11, 12]]

        expect { Matrix.dot_product(a, b) }.to raise_error(ArgumentError, "Number of columns in matrix A must match number of rows in matrix B")
      end
    end
  end
end
