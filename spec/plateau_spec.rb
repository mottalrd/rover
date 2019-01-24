require "plateau.rb"

describe Plateau do

  let(:plateau) { Plateau.new("5", "5") }
  let(:grid) { [["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"]] }

  describe "#initialize" do
    it "should use specified values" do
      expect(plateau.x_coord).to eq 5
      expect(plateau.y_coord).to eq 5
    end
  end

  describe "#create_grid" do
    it "should return the correct board" do
      expect(plateau.create_grid).to eq grid
    end
  end

  describe "#display_grid" do
    it "should display the grid in the console" do
      plateau.create_grid

      # the {} is used after expect instead of () because it...
      # substitutes real ruby output "file" with a fake one that collects all the thing you put into it
      # then it runs the code and puts everything back to normal afterwards
      # to_stdout stands for standard output

      expect{ plateau.display_grid }.to output("|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n").to_stdout
    end
  end

  describe "#display_rovers_on_grid" do
    it "should display the rovers in the correct cell on the grid" do
      rovers = [Rover.new("1", "2", "N", "LMLMLMLMM"), Rover.new("3", "3", "E", "MMRMMRMRRM")]
      plateau.create_grid
      expect{ plateau.display_rovers_on_grid }.to output("1 2 N\n3 3 E\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|R|-|-|\n|-|R|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n").to_stdout
    end
  end

end
