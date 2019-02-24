require "./lib/rubychess/player.rb"

RSpec.describe Player do
	context "#initialize" do
		it "raises an error if no arguments are passed" do
			expect{ Player.new }.to raise_error(ArgumentError)
		end
		it "initializes correct with valid inputs" do
			expect{ Player.new("John", "white") }.to_not raise_error
		end
	end
end