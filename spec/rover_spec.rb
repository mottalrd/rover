require 'rover.rb'

describe Rover do

  let(:rover) { Rover.new("1", "2", "N", "LMLMLMLMM") }
  let(:rover2) { Rover.new("3", "3", "E", "MMRMMRMRRM") }
  # let(:rovers) { Rover.all }

  describe "#initialize" do
    context "with parameters" do
      it "should use specified values" do
        expect(rover.x).to eq 1
        expect(rover.y).to eq 2
        expect(rover.direction).to eq "N"
        expect(rover.instructions).to eq "LMLMLMLMM"
        expect(Rover.all).to include rover
      end
    end

    # context "without parameters" do
    #
    # end

  end

  describe ".all" do
    context "when called on the Rover class"
    it "should return all instances of the Rover class" do
      expect(Rover.all).to eq [rover, rover2]
      expect(Rover.all.length).to eq 2
    end
  end

  describe "#execute_command" do
    
  end


end
