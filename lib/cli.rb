require_relative 'styling.rb'

module CLI

  include Styling

  def welcome
    puts_fast "Welcome to your first mission at NASA."
  end

  def explore_mars_question
    PROMPT.select("Would you like to help us explore Mars?", %w(Yes No))
  end

  def coordinates
    puts_fast "Excellent choice."
    puts_fast "The bottom-left coordinates of the Mars plateau are assumed to be 0,0."
  end

  def specify_x_coord
    PROMPT.ask("Specify the top-right X coordinate.") do |q|
      q.required true
      q.validate(/^[1-9]*$/, 'Must be a number greater than 0')
    end
  end

  # def input_must_be_number
  #   puts "Please enter a number greater than 0"
  # end

  def specify_y_coord
    PROMPT.ask("Specify the top-right Y coordinate.") do |q|
      q.required true
      q.validate(/^[1-9]*$/, 'Must be a number greater than 0')
    end
  end

  def divide_plateau
    puts_fast "Thank you. The plateau has been divided into a grid to simplify navigation and based on your input, looks like this:"
  end

  def goodbye
    puts_fast "Ok - goodbye!"
  end

  def rover_position_explanation
    puts_fast "Now it's time to deploy a rover or two..."
    puts_fast "You must decide on the starting position of a rover"
    puts_fast "For example, 0 0 N, will place the rover in the bottom left cell, facing North."
  end

  def get_x_coord
    PROMPT.ask("Provide the starting X coordinate, which must be between 0-#{@initialized_plateau.x_coord}") { |q| q.in("0-#{@initialized_plateau.x_coord}") }
  end

  def get_y_coord
    PROMPT.ask("And the Y coordinate, which must be between 0-#{@initialized_plateau.y_coord}") { |q| q.in("0-#{@initialized_plateau.y_coord}") }
  end

  def get_direction
    PROMPT.select("Which direction is it facing: North, East, South or West?", %w(N E S W))
  end

  def sequence_explanation
    puts_fast "Now you must instruct the rover by typing in a sequence of the following commands: L, R and M."
    puts_fast "L: Rotate 90 degrees left."
    puts_fast "R: Rotate 90 degrees right."
    puts_fast "M: Move forward one grid point."
  end

  def sequence_reminder
    puts_fast "Instruct the rover with the following commands: L, R and M."
  end

  def sequence_try_again
    puts_fast "Try again. You can only use the commands: L R M."
  end

  def deploy_another_rover_question
    PROMPT.select("Congratulations, you have deployed a rover. Would you like to deploy another?", %w(Yes No))
  end

  def initial_position
    puts_fast "Initial position of rover(s):"
  end

  def eventual_position
    puts_fast "Eventual position of rover(s):"
  end

end
