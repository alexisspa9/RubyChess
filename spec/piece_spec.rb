require "./lib/rubychess/piece.rb"

RSpec.describe Piece do
	context "#initialize" do
		it "raises an error if no arguments are passed" do
			expect{ Piece.new }.to raise_error(ArgumentError)
		end
		it "initializes correct with valid inputs" do
			expect{ Piece.new("white", "Queen") }.to_not raise_error
		end
	end
end