require "./lib/rubychess/square.rb"

RSpec.describe Square do
	context "#initialize" do
		it "raises an error if no arguments are passed" do
			expect{ Square.new }.to raise_error(ArgumentError)
		end
		it "initializes correct with valid inputs" do
			expect{ Square.new(0,0) }.to_not raise_error
		end
	end
end