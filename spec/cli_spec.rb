require 'tty/prompt'
require 'cli.rb'
require './spec/support/cli_helpers'

RSpec.configure do |c|
  c.include CliHelpers
end

describe CLI do

  describe "#welcome" do
    it "puts a welcome message" do
      mission_control = double("mission")
      message = mission_control.welcome
      expect(message).to eq "Welcome to your first mission at NASA."
    end
  end

  # describe "#welcome" do
  #   it "puts a welcome message" do
  #     expect(welcome).to eq "Welcome to your first mission at NASA."
  #   end
  # end


end
