require 'tty/prompt'
require 'mission_control.rb'

describe MissionControl do

  describe "#begin" do
    it "should prompt user to make a choice on whether to explore Mars or not" do
      expect()
    end
    context "when choice is yes" do
      it "should receive user input and assign it to the x_coord variable" do
        expect()
      end
      it "should receive user input and assign it to the y_coord variable" do
        expect()
      end
      it "should create a new instance, @initialized_plateau, of the Plateau class based on the user's input" do
        expect()
      end
      it "should call the create_grid method on @initialized_plateau" do
        expect()
      end
      it "should call the display_grid method on @initialized_plateau" do
        expect()
      end
    end
    context "when choice is no" do
      it "should end the current session" do
        expect()
      end
    end
  end

  describe "#get_input" do
    it "should should receive user input and assign it to @starting_x_coord" do
      expect()
    end
    it "should should receive user input and assign it to @starting_y_coord" do
      expect()
    end
    it "should should receive user input and assign it to @direction" do
      expect()
    end
    it "should should receive user input, upcase it, and assign it to @instructions" do
      expect()
    end
    it "should call validate_instructions method" do
      expect()
    end
  end

  describe "#validate_instructions" do
    context "@instructions only consist of 'L' 'R' 'M' characters" do
      it "should call deploy_rover method" do
        expect()
      end
    end
    context "@instructions include characters other than 'L' 'R' 'M'" do
      it "should should receive user input, upcase it, and assign it to @instructions" do
        expect()
      end
      it "should call the validate_instructions method again" do
        expect()
      end
    end
  end

  describe "#deploy_rover" do
    it "should create a new instance of the Rover class with the following variables: @starting_x_coord, @starting_y_coord, @direction, @instructions" do
      expect()
    end
    it "should prompt user to make a choice on whether to deploy another rover or not" do
      expect()
    end
    context "when choice is yes" do
      it "should call the get_input method" do
        expect()
      end
    end
    context "when choice is no" do
      it "should call the trigger_action method" do
        expect()
      end
    end
  end

  describe "#trigger_action" do
    it "should display the initial position(s) of the rover(s) on the grid plateau" do
      expect()
    end
    it "should iterate through all the deployed rovers and execute their corresponding instructions" do
      expect()
    end
    it "should clear @initialized_plateau with the create_grid method to remove initial position of rover(s)" do
      expect()
    end
    it "should display the eventual position(s) of the rover(s) on the grid plateau" do
      expect()
    end 
  end

end
