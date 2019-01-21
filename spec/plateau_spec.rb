require "plateau.rb"

describe Plateau do

  let(:plateau) { Plateau.new("5", "5") }

  describe "#initialize" do
    context "with parameters" do
      it "should use specified values" do
        expect(plateau.x_coord).to eq 5
        expect(plateau.y_coord).to eq 5
      end
    end
  end

  describe "#create_grid" do
    it "should create an array" do
      expect(plateau.create_grid).to be_an_instance_of(Array)
    end
    # it "should create the correct number of empty arrays to represent each of the grid's rows" do
    #   expect(plateau.grid.length).to be(plateau.y_coord + 1)
    # end
    # it "should fill each empty array (row) with the correct number of empty strings to represent each of the grid's cells" do
    #   expect(plateau.row.length).to be (plateau.x_coord + 1)
    # end
    it "should return the correct board" do
      expect(plateau.create_grid).to eq [["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"],["-","-","-","-","-","-"]]
    end
  end

  describe "#display_grid" do
    it "should display the grid in the console" do
      expect(plateau.display_grid).to eq "|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|"
    end
  end

  describe "#display_rovers_on_grid" do
    it "should display the rovers in the correct cell on the grid" do
      # based on let(:rover) { Rover.new("1", "2", "N", "LMLMLMLMM")
      # before instructions
      expect(plateau.display_rovers_on_grid).to eq "|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|R|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|"
      # after instructions
      expect(plateau.display_rovers_on_grid).to eq "|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|R|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|\n|-|-|-|-|-|-|"
    end
  end

end
