
require 'rspec'

class ZeroDivision

	def initialize(num1,num2)
		@num1 = num1
		@num2 = num2
	end
	
	def division
		begin
			result = @num1/@num2
		rescue
			if @num2 == 0
				puts "error made by zero"	
			end
		end

	end
end
obj = ZeroDivision.new(4,4)
obj.divison

describe "zerodivision error" do
	context 'true case'do
	it "should give no ZeroDivision error"do

	expect(ZeroDivision.new(3,3).divison).to eq(1)

end
it "should give no ZeroDivision error"do
expect(ZeroDivision.new(4,4).divison).to eq(1)
end

end

context 'false case'do
it "should give  ZeroDivision error"do
expect(ZeroDivision.new(3,0).divison).to eq("NA")
end
it "should give ZeroDivision error"do
expect(ZeroDivision.new(3,0).divison).to eq("NA")
end

end

end