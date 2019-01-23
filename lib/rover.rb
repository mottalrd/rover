require_relative 'commands.rb'

class Rover

  include Commands

  attr_reader :x, :y, :direction, :instructions

  @@rovers = []

  def initialize(x, y, direction, instructions)
    @x = x.to_i
    @y = y.to_i
    @direction = direction
    @instructions = instructions
    @@rovers << self
  end

  def self.all
    @@rovers
  end

  def execute_command
      @instructions.split("").each do |command|
      case command
      when "M"
        move_rover
      when "L"
        rotate_rover(-1)
      when "R"
        rotate_rover(+1)
      end
    end
  end

  def move_rover
    returned_coords = move_forward(@direction)
    @x += returned_coords[0]
    @y += returned_coords[1]
  end

  def rotate_rover(index)
    returned_direction = rotate(@direction, index)
    @direction = returned_direction
  end

end
