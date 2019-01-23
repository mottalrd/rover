require 'commands.rb'
require './spec/support/commands_helpers'

RSpec.configure do |c|
  c.include CommandsHelpers
end

describe Commands do

  describe "#rotate" do
    it "returns the correct cardinal compass point based on rover's current direction and desired rotation" do
      expect(rotate("N", 1)).to eq "E"
      expect(rotate("N", -1)).to eq "W"
      expect(rotate("E", 1)).to eq "S"
      expect(rotate("E", -1)).to eq "N"
      expect(rotate("S", 1)).to eq "W"
      expect(rotate("S", -1)).to eq "E"
      expect(rotate("W", 1)).to eq "N"
      expect(rotate("W", -1)).to eq "S"
    end
  end

  describe "#move_forward" do
    it "returns an array" do
      expect(move_forward("N")).to be_an_instance_of(Array)
    end

    it "returns array of new coordinates when given a rover's current direction" do
      expect(move_forward("N")).to eq [0, 1]
      expect(move_forward("E")).to eq [1, 0]
      expect(move_forward("S")).to eq [0, -1]
      expect(move_forward("W")).to eq [-1, 0]
    end
  end

end
