require "Matrix"

describe Matrix do
  context "test for extracting a row from a matrix given its index" do

    it "row[0] of '1 2 ; 10 20' is [1, 2]" do
      matrix = Matrix.new("1 2\n10 20")
      expect(matrix.extract_row(0)).to eql([1, 2])
    end

  end
end
