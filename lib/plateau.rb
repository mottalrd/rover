class Plateau

  attr_reader :x_coord, :y_coord

  def initialize(x_coord, y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
  end

  def create_grid
    @grid = []
    row = []
    number_of_rows = @y_coord.to_i + 1
    number_of_items = @x_coord.to_i
    row.fill("-", 0..number_of_items)
    number_of_rows.times{ @grid << row }
  end

  def display_grid
    @grid.each do |row|
      print "|"
      row.each { |cell| print "#{cell}|" }
      puts "\n"
    end
  end

end
