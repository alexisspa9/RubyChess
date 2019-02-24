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
	before do
		@player = Player.new("John", "white")
	end
	context "#name" do
		it "returns the name" do
			expect(@player.name).to eq("John")
		end
		it "can't change the name" do
			expect{ @player.name = "George" }.to raise_error(NoMethodError)
		end
	end

	context "#color" do
		it "returns the color" do
			expect(@player.color).to eq("white")
		end
		it "can't change the name" do
			expect{ @player.color = "black" }.to raise_error(NoMethodError)
		end
	end
end