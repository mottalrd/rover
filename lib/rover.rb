
class Rover

  attr_reader :position, :instructions

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
