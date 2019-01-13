class Matrix

  def initialize(string)
    @string = string
    @no_of_rows = 0
    @no_of_columns = 0
  end

  def string_to_matrix
    matrix = @string.split("\n")
    @no_of_rows = matrix.size
    (0..@no_of_rows-1).each do |each|
      matrix[each] = matrix[each].split(" ")
    end
    @no_of_column = matrix[0].size
    matrix
  end

  def extract_row(index)
    matrix = string_to_matrix
    row = []
    (0..@no_of_column-1).each do |each|
      row << matrix[index][each].to_i
    end
    row
  end

  def extract_column(index)
    matrix = string_to_matrix
    column = []
    (0..@no_of_rows-1).each do |each|
      column << matrix[each][index].to_i
    end
    column
  end

end