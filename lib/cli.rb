require_relative 'plateau.rb'
require_relative 'styling.rb'
require_relative 'rover.rb'

class CLI
  include Styling

  def welcome
    puts_fast "Welcome to your first mission at NASA."
    choice = PROMPT.select("Would you like to help us explore Mars?", %w(Yes No))
    case choice
    when "Yes"
      puts_fast "Excellent choice."
      puts_fast "The bottom-left coordinates of the Mars plateau are assumed to be 0,0."
      puts_fast "Please specify the top-right X coordinate."
      x_coord = gets.chomp
      puts_fast "And now the top-right Y coordinate."
      y_coord = gets.chomp
      puts_fast "Thank you. The plateau has been divided into a grid to simplify navigation and based on your input, looks like this:"
      @initialized_plateau = Plateau.new(x_coord, y_coord)
      @initialized_plateau.create_grid
      @initialized_plateau.display_grid
      deploy_first_rover
    when "No"
      puts_fast "Ok - goodbye!"
    end
  end

  def deploy_first_rover
    puts_fast "Now it's time to deploy a rover or two..."
    puts_fast "You must decide on the starting position of a rover"
    puts_fast "For example, 0, 0, N, will place the rover in the bottom left cell, facing North."
    starting_x_coord = PROMPT.ask("Provide the starting X coordinate, which must be between 0-#{@initialized_plateau.x_coord}") { |q| q.in("0-#{@initialized_plateau.x_coord}") }
    starting_y_coord = PROMPT.ask("And the Y coordinate, which must be between 0-#{@initialized_plateau.y_coord}") { |q| q.in("0-#{@initialized_plateau.y_coord}") }
    direction = PROMPT.select("Which direction is it facing: North, East, South or West?", %w(N E S W))
    position = [starting_x_coord, starting_y_coord, direction]
    puts_fast "Now you must instruct the rover by typing in a sequence of the following commands: L, R and M."
    puts_fast "L: Rotate 90 degrees left."
    puts_fast "R: Rotate 90 degrees right."
    puts_fast "M: Move forward one grid point."
    instructions = gets.chomp.capitalize
    # TODO: validate that instructions only contain L R M characters
    Rover.new(position, instructions)
    choice = PROMPT.select("Congratulations, your first rover has been deployed. Would you like to deploy another?", %w(Yes No))
    case choice
    when "Yes"
      deploy_more_rovers
    when "No"
      trigger_action
    end
  end

  def deploy_more_rovers
    starting_x_coord = PROMPT.ask("Provide the starting X coordinate, which must be between 0-#{@initialized_plateau.x_coord}") { |q| q.in("0-#{@initialized_plateau.x_coord}") }
    starting_y_coord = PROMPT.ask("And the Y coordinate, which must be between 0-#{@initialized_plateau.y_coord}") { |q| q.in("0-#{@initialized_plateau.y_coord}") }
    direction = PROMPT.select("Which direction is it facing: North, East, South or West?", %w(N E S W))
    position = [starting_x_coord, starting_y_coord, direction]
    puts_fast "Instruct the rover with the following commands: L, R and M."
    instructions = gets.chomp.upcase
    Rover.new(position, instructions)
    choice = PROMPT.select("Your rover has been deployed. Would you like to deploy another?", %w(Yes No))
    case choice
    when "Yes"
      deploy_more_rovers
    when "No"
      trigger_action
    end
  end

  def trigger_action
    # display rovers on the plateau before moving
    puts "Initial position of rover(s):"
    @initialized_plateau.display_rovers_on_grid

    # TODO: run instructions/commands to change location of rovers

    # TODO: display rovers on the plateau after moving
    puts "Eventual position of rover(s):"
  end

end
