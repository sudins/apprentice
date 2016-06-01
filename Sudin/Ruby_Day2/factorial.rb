require'rspec'

describe "Factorial" do
	it "2 should give 2" do
		factorial = Factorial.new(2)
		result = factorial.calculate
		expect(result).to eq(2)
	end
end


class Factorial
	def initialize(number)
		@num = number
	end

	def calculate
	   result = 1
	   while @num>1 do
	   	result = result * @num
	   	@num = @num -1   
		end
		result
	end
end


