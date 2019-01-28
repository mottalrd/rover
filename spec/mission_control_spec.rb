require 'tty/prompt'
require 'mission_control.rb'

# It seems to me that this class is literally the entry point of the program
# so the way I would expect to use it if I was in a repl would be
# MissionControll.new.begin
# After this I wouldn't probably refer to the MissionControl instance
# and just follow the game.
# If that's the case, the I would test a couple of simple input/output
# interactions with the game.
# You can do that by stubbing `gets` and return the various strings that
# the user would input
# allow(mission).to receive(:gets).and_return(["Yes", "N", etc...])
describe MissionControl do

  let(:mission) { MissionControl.new }

  describe "#begin" do
    context "when choice is yes" do
      # I would use let for this
      x_coord = "5"
      y_coord = "5"
      
      # I am not sure about these tests
      # To me a more helpful test would be
      # context 'when I choose yes' do
      #   it 'prints a message to the screen asking for the coordinates (?)'
      # end
      # 
      # how it is done (i.e. via instance variable and Plateau) could be hidden 
      it "should create a new instance, @initialized_plateau, of the Plateau class based on the user's input" do
        expect()
      end
      it "should call the create_grid method on @initialized_plateau" do
        expect()
      end
      it "should call the display_grid method on @initialized_plateau" do
        expect()
      end
      it "should call the get_input method" do
        expect()
      end
    end
    context "when choice is no" do
      it "should call on goodbye method" do
        expect()
      end
    end
  end

  # Is get_input a public or private method? 
  describe "#get_input" do
    # it "should should receive user input and assign it to @starting_x_coord" do
    #   expect()
    # end
    # it "should should receive user input and assign it to @starting_y_coord" do
    #   expect()
    # end
    # it "should should receive user input and assign it to @direction" do
    #   expect()
    # end
    # it "should should receive user input, upcase it, and assign it to @instructions" do
    #   expect()
    # end
    # it "should call validate_instructions method" do
    #   expect()
    # end
  end

  # Is this a public or private method?
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

  # Is this a public or private method?
  describe "#deploy_rover" do
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

  # Is this a public or private method?
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
