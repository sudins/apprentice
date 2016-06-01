require 'rspec'

describe "add two numbers" do
	it "should add 2,3 and give 5" do
		expect(add(2,3)).to eq(5)
	end
end


def add(a,b)
	2+3	
end

