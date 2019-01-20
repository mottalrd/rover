module Commands

  def rotate(direction, rotation)
    cardinals = ["N", "E", "S", "W"]
    cardinals[cardinals.index(direction) + rotation] || cardinals[0]
  end

  def move_forward(direction)
    case direction
    when "N"
      [0, 1]
    when "E"
      [1, 0]
    when "S"
      [0, -1]
    when "W"
      [-1, 0]
    end
  end

end
