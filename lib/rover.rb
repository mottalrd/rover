
class Rover

  # attr_accessor :position, :direction

  @@rovers = []

  def initialize(position, instructions)
    @position = position
    @instructions = instructions
    @@rovers << self
  end

  def self.all
    @@rovers
  end

end
