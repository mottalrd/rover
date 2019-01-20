require_relative 'commands.rb'

class Rover

  # attr_accessor :x, :y, :direction
  attr_reader :x, :y, :direction, :instructions

  @@rovers = []

  def initialize(x, y, direction, instructions)
    @x = x.to_i
    @y = y.to_i
    @direction = direction
    @instructions = instructions
    @@rovers << self
    @commands = Commands.new
  end

  def self.all
    @@rovers
  end

  def execute_command
      @instructions.split("").each do |command|
      case command
      when "M"
        returned_coords = @commands.move_forward(@direction)
        @x += returned_coords[0]
        @y += returned_coords[1]
      when "L"
        returned_direction = @commands.rotate(@direction, "L")
        @direction = returned_direction
      when "R"
        returned_direction = @commands.rotate(@direction, "R")
        @direction = returned_direction
      end
    end
  end

end
