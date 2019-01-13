require "Matrix"

describe Matrix do
  context "test for extracting a row from a matrix given its index" do

    it "row[0] of '1 2 ; 10 20' is [1, 2]" do
      matrix = Matrix.new("1 2\n10 20")
      expect(matrix.extract_row(0)).to eql([1, 2])
    end

    it "row[1] of '9 8 7 ; 19 18 17' is [19, 18, 17]" do
      matrix = Matrix.new("9 8 7\n19 18 17")
      expect(matrix.extract_row(1)).to eql([19, 18, 17])
    end

  end
end
