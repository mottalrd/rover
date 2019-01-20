require_relative 'plateau.rb'
require_relative 'rover.rb'
require_relative 'cli.rb'

class MissionControl

  include CLI

  def begin
    welcome
    choice = explore_mars_question
    case choice
    when "Yes"
      specify_x_coord
      x_coord = gets.chomp
      specify_y_coord
      y_coord = gets.chomp
      divide_plateau
      @initialized_plateau = Plateau.new(x_coord, y_coord)
      @initialized_plateau.create_grid
      @initialized_plateau.display_grid
      get_input1
    when "No"
      goodbye
    end
  end

  def get_input1
    rover_position_explanation
    @starting_x_coord = get_x_coord
    @starting_y_coord = get_y_coord
    @direction = get_direction
    sequence_explanation
    @instructions = gets.chomp.upcase
    validate_instructions
  end

  def get_input2
    @starting_x_coord = get_x_coord
    @starting_y_coord = get_y_coord
    @direction = get_direction
    sequence_reminder
    @instructions = gets.chomp.upcase
    validate_instructions
  end

  def validate_instructions
    if @instructions.match(/\A[LRM]+\z/)
      deploy_rover
    else
      sequence_try_again
      @instructions = gets.chomp.upcase
      validate_instructions
    end
  end

  def deploy_rover
    Rover.new(@starting_x_coord, @starting_y_coord, @direction, @instructions)
    choice = deploy_another_rover_question
    case choice
    when "Yes"
      get_input2
    when "No"
      trigger_action
    end
  end

  def trigger_action
    # display rovers on the plateau before moving
    initial_position
    @initialized_plateau.display_rovers_on_grid

    # run instructions/commands to change location of rovers
    rovers = Rover.all
    rovers.each { |r| r.execute_command }

    # displays rovers on the plateau after moving
    eventual_position
    @initialized_plateau.display_rovers_on_grid
  end

end
