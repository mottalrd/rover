require 'tty/prompt'
require 'cli.rb'
require './spec/support/cli_helpers'

RSpec.configure do |c|
  c.include CliHelpers
end

describe CLI do

  describe "#welcome" do
    it "outputs a welcome message to the terminal" do
      expect{ welcome }.to output("Welcome to your first mission at NASA.\n").to_stdout
    end
  end

  describe "#coordinates" do
    it "outputs a coordinate message to the terminal" do
      expect{ coordinates }.to output("Excellent choice.\n" "The bottom-left coordinates of the Mars plateau are assumed to be 0,0.\n").to_stdout
    end
  end

  describe "#divide_plateau" do
    it "outputs a divide message to the terminal" do
      expect{ divide_plateau }.to output("Thank you. The plateau has been divided into a grid to simplify navigation and based on your input, looks like this:\n").to_stdout
    end
  end

  describe "#goodbye" do
    it "outputs a goodbye message to the terminal" do
      expect{ goodbye }.to output("Ok - goodbye!\n").to_stdout
    end
  end

  describe "#rover_position_explanation" do
    it "outputs a rover position explanation message to the terminal" do
      expect{ rover_position_explanation }.to output("You must decide on the starting position of a rover\n" "For example, 0 0 N, will place the rover in the bottom left cell, facing North.\n").to_stdout
    end
  end

  describe "#sequence_explanation" do
    it "outputs a sequence explanation message to the terminal" do
      expect { sequence_explanation }.to output("Instruct the rover with the following commands: L, R and M.\n" "L: Rotate 90 degrees left.\n" "R: Rotate 90 degrees right.\n" "M: Move forward one grid point.\n").to_stdout
    end
  end

  describe "#sequence_try_again" do
    it "outputs a try again message to the terminal" do
      expect { sequence_try_again }.to output("Try again. You can only use the commands: L R M.\n").to_stdout
    end
  end

  describe "#initial_position" do
    it "outputs initial position message to the terminal" do
      expect { initial_position }.to output("Initial position of rover(s):\n").to_stdout
    end
  end

  describe "#eventual_position" do
    it "outputs eventual position message to the terminal" do
      expect { eventual_position }.to output("Eventual position of rover(s):\n").to_stdout
    end
  end

end

# METHODS INCLUDING PROMPT TTY GEM :

# describe "#explore_mars_question" do
#   it "prompts user" do
#     expect{ explore_mars_question }.to output("Would you like to help us explore Mars?\n").to_stdout
#   end
# end

# describe "#specify_x_coord" do
#   it "prompts user" do
#     expect{ specify_x_coord }.to output("Specify the top-right X coordinate.\n").to_stdout
#   end
# end

# describe "#specify_y_coord" do
#   it "prompts user" do
#     expect{ specify_y_coord }.to output("Specify the top-right Y coordinate.\n").to_stdout
#   end
# end

# describe "#get_x_coord" do
#   it "prompts user" do
#     expect{ get_x_coord }.to output("Provide the starting X coordinate, which must be between 0-#{@initialized_plateau.x_coord}\n").to_stdout
#   end
# end

# describe "#get_y_coord" do
#   it "prompts user" do
#     expect{ get_y_coord }.to output("And the Y coordinate, which must be between 0-#{@initialized_plateau.y_coord}\n").to_stdout
#   end
# end

# describe "#get_direction" do
#   it "prompts user" do
#     expect{ get_direction }.to output("Which direction is it facing: North, East, South or West?\n").to_stdout
#   end
# end

# describe "#deploy_another_rover_question" do
#   it "prompts user" do
#     expect{ deploy_another_rover_question }.to output("Congratulations, you have deployed a rover. Would you like to deploy another?\n").to_stdout
#   end
# end
