require 'rover.rb'
require 'pry'

describe Rover do

  let(:rover1) { Rover.new("1", "2", "N", "LMLMLMLMM") }
  let(:rover2) { Rover.new("3", "3", "E", "MMRMMRMRRM") }
  let(:rovers) { Rover.all }

  describe "#initialize" do
      it "should use specified values on initialization" do
        expect(rover1.x).to eq 1
        expect(rover1.y).to eq 2
        expect(rover1.direction).to eq "N"
        expect(rover1.instructions).to eq "LMLMLMLMM"
        expect(rovers).to include rover1
      end
  end

  describe ".all" do
    it "should return all instances of the Rover class" do
      expect(rovers).to eq [rover1, rover2]
      expect(rovers.length).to eq 2
    end
  end

  describe "#execute_command" do
    it "should iterate through the rover's instructions and execute them consecutively" do
      expect()
    end
    context "when command is M" do
      it "should call the move_rover method" do
        expect()
      end
    end
    context "when command is L" do
      it "should call the rotate_rover method with an index of -1" do
        expect()
      end
    end
    context "when command is R" do
      it "should call the rotate_rover method with an index of +1" do
        expect()
      end
    end
  end

  describe "#move_rover" do
    it "should update the rover's x and y coordinates" do
      rover1.move_rover
      rover2.move_rover
      expect(rover1.x).to eq 1
      expect(rover1.y).to eq 3
      expect(rover2.x).to eq 4
      expect(rover2.y).to eq 3
    end
  end

  describe "#rotate_rover" do
    it "should update the rover's direction" do
      rover1.rotate_rover(-1)
      rover2.rotate_rover(1)
      expect(rover1.direction).to eq "W"
      expect(rover2.direction).to eq "S"
    end
  end

end
