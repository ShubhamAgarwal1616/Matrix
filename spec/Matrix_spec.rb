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

  context "test for extracting a column from a matrix given its index" do
    it "column[0] of '1 2 3 ; 4 5 6 ; 7 8 9 ; 8 7 6' is [1, 4, 7, 8]" do
      matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
      expect(matrix.extract_column(0)).to eql([1, 4, 7, 8])
    end

    it "column[1] of '89 1903 3 ; 18 3 1 ; 9 4 800' is [1903, 3, 4]" do
      matrix = Matrix.new("89 1903 3\n18 3 1\n9 4 800")
      expect(matrix.extract_column(1)).to eql([1903, 3, 4])
    end
  end

end
