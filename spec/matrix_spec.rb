require_relative "../app/matrix"

RSpec.describe Matrix do
  describe ".dot_product" do
    context "when given valid matrices" do
      it "computes the dot product correctly" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6], [7, 8]]
        result = Matrix.dot_product(a, b)

        expect(result).to eq([[19, 22], [43, 50]])
      end
    end

    context "when given matrices with invalid dimensions" do
      it "raises an ArgumentError" do
        a = [[1, 2], [3, 4]]
        b = [[5, 6, 7], [8, 9, 10]]

        expect { Matrix.dot_product(a, b) }.to raise_error(ArgumentError, "Invalid matrix dimensions")
      end
    end
  end
end
