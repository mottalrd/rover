class Commands

  def rotate(direction, desired_rotation)
    case direction
    when "N"
      case desired_rotation
      when "L"
        "W"
      when "R"
        "E"
      end
    when "E"
      case desired_rotation
      when "L"
        "N"
      when "R"
        "S"
      end
    when "S"
      case desired_rotation
      when "L"
        "E"
      when "R"
        "W"
      end
    when "W"
      case desired_rotation
      when "L"
        "S"
      when "R"
        "N"
      end
    end
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
