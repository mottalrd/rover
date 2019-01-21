require 'commands.rb'

describe Commands do

  let(:rover) { Rover.new("4", "5", "S", "RRRMMM") }

  describe "#rotate" do
    it "returns the correct cardinal compass point based on rover's current direction and desired rotation" do
      expect(rover.rotate("N", 1)).to eq "E"
      expect(rover.rotate("N", -1)).to eq "W"
      expect(rover.rotate("E", 1)).to eq "S"
      expect(rover.rotate("E", -1)).to eq "N"
      expect(rover.rotate("S", 1)).to eq "W"
      expect(rover.rotate("S", -1)).to eq "E"
      expect(rover.rotate("W", 1)).to eq "N"
      expect(rover.rotate("W", -1)).to eq "S"
    end
  end

  describe "#move_forward" do
    it "returns an array" do
      expect(rover.move_forward("N")).to be_an_instance_of(Array)
    end 
    it "returns array of new coordinates when given a rover's current direction" do
      expect(rover.move_forward("N")).to eq [0, 1]
      expect(rover.move_forward("E")).to eq [1, 0]
      expect(rover.move_forward("S")).to eq [0, -1]
      expect(rover.move_forward("W")).to eq [-1, 0]
    end
  end

end
