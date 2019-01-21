require 'tty/prompt'
require 'cli.rb'

describe CLI do

  describe "#welcome" do
    context "When testing the CLI class" do
      it "puts a welcome message" do
        mission_control = double("mission")
        message = mission_control.welcome
        expect(message).to eq "Welcome to your first mission at NASA."
      end
    end
  end


end
