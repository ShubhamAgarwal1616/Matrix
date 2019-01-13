class Matrix

  def initialize(string)
    @string = string
    @no_of_rows = 0
    @no_of_columns = 0
  end

  def extract_row(index)

    matrix = @string.split("\n")
    @no_of_rows = matrix.size
    for each in (0..@no_of_rows-1) do
      matrix[each] = matrix[each].split(" ")
    end
    @no_of_column = matrix[0].size
    row = []
    for each in (0..@no_of_column-1) do
      row << matrix[index][each].to_i
    end
    row
  end

end