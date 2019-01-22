require 'rover.rb'

describe Rover do

  # # this style is maybe only used for rails?
  # let(:attributes) do
  #     {
  #       x: "1",
  #       y: "2",
  #       direction: "N",
  #       instructions: "LMLMLMLMM"
  #     }
  # end
  #
  # let(:missing_x_coord) { attributes.except(:x) }
  # let(:missing_y_coord) { attributes.except(:y) }
  # let(:missing_direction) { attributes.except(:direction) }
  # let(:missing_instructions) { attributes.except(:instructions) }
  #
  # it "is considered valid" do
  #   expect(Rover.new(attributes)).to be_valid
  # end
  #
  # it "is invalid without an x coordinate" do
  #   expect(Rover.new(missing_x_coord)).not_to be_valid
  # end
  #
  # it "is invalid without a y coordinate " do
  #   expect(Rover.new(missing_y_coord)).not_to be_valid
  # end
  #
  # it "is invalid without a direction" do
  #   expect(Rover.new(missing_direction)).not_to be_valid
  # end
  #
  # it "is invalid without instructions" do
  #   expect(Rover.new(missing_instructions)).not_to be_valid
  # end

  # let(:rover) { Rover.new("1", "2", "N", "LMLMLMLMM") }
  subject(:rover2) { Rover.new("3", "3", "E", "MMRMMRMRRM") }
  subject(:rover) { Rover.new("1", "2", "N", "LMLMLMLMM") }
  subject (:rovers) { Rover.all }

  describe "#initialize" do
    context "with parameters" do
      it "should use specified values" do
        expect(rover.x).to eq 1
        expect(rover.y).to eq 2
        expect(rover.direction).to eq "N"
        expect(rover.instructions).to eq "LMLMLMLMM"
        expect(rovers).to include rover
      end
    end

    # context "without parameters" do
    #
    # end

  end

  describe ".all" do
    context "when called on the Rover class"
    it "should return all instances of the Rover class" do
      expect(rovers).to eq [rover, rover2]
      expect(rovers.length).to eq 2
    end
  end


  describe "#execute_command" do
    it "should split a string of instructions" do
      expect("LMLMLM").to eq ["L", "M", "L", "M", "L", "M"]
    end
    it "should execute each command in the correct order of left to right" do
      expect()
    end
    context "when command is M" do
      it "should call the move_forward method" do
        expect()
      end
      it "should update the rover's x and y coordinates" do
        expect()
      end
    end
    context "when command is L" do
      it "should call the rotate method with two arguments: the rover's direction and an index of -1" do
        expect()
      end
      it "should update the rover's direction" do
        expect()
      end
    end
    context "when command is R" do
      it "should call the rotate method with two arguments: the rover's direction and an index of +1" do
        expect()
      end
      it "should update the rover's direction" do
        expect()
      end
    end
  end


end
