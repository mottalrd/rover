require_relative 'rover.rb'

class Plateau

  attr_reader :x_coord, :y_coord

  def initialize(x_coord, y_coord)
    @x_coord = x_coord.to_i
    @y_coord = y_coord.to_i
  end

  def create_grid
    @grid = []
    @row = []
    number_of_rows = @y_coord + 1
    number_of_items = @x_coord
    @row.fill("-", 0..number_of_items)
    number_of_rows.times{ @grid << @row }
    @grid
  end

  def display_grid
    @grid.each do |row|
      print "|"
      row.each { |cell| print "#{cell}|" }
      puts "\n"
    end
  end

  def display_rovers_on_grid
    rovers = Rover.all
    index = 0
    while index < rovers.length do
      rover = rovers[index]
      new_row = @row.clone
      # inserting rover into the correct x coordinate
      new_row[rover.x.to_i] = 'R'
      # finding the correct row based on new y coordinate to replace with the cloned row containing rover's new x coordinate
      @grid[@grid.length - 1 - rover.y.to_i] = new_row
      index += 1
    end
      rovers.each { |r| puts "#{r.x} #{r.y} #{r.direction}" }
      display_grid
  end
end
