require "spec_helper"
require_relative "../app/matrix"

RSpec.describe Matrix do
  describe "#dot_product" do
    context "when given two compatible matrices" do
      let(:matrix1) { [[1, 2], [3, 4]] }
      let(:matrix2) { [[5, 6], [7, 8]] }
      
      it "returns the correct dot product" do
        expected_result = [[19, 22], [43, 50]]
        expect(Matrix.dot_product(matrix1, matrix2)).to eq(expected_result)
      end
    end
    
    context "when given two incompatible matrices" do
      let(:matrix1) { [[1, 2], [3, 4]] }
      let(:matrix2) { [[5, 6, 7], [8, 9, 10]] }
      
      it "raises an ArgumentError" do
        expect{ Matrix.dot_product(matrix1, matrix2) }.to raise_error(ArgumentError, "Matrices must be compatible for dot product")
      end
    end
  end
end
