 
require 'rspec'

class DiamondDistributor
	def initialize(diamonds)
		@diamonds = diamonds
	end

	def distributable?
		if sum  % 3 == 0
			return true
		else
			return false
		end
	end

	private

	def sum
		sum = 0
		for item in @diamonds
			sum = sum + item
		end
		sum
	end

	def distribute

		@original_diamonds = @diamonds.dup
		@sack = []
		@original_diamonds.each_with_index do |item1, index1|
			@original_diamonds.each.with_index() do |item2, index2|
				puts @diamonds.count
				puts item1
				puts '*'*20
				if item1 == sum/3
					@sack << [item1]
					@diamonds.delete_at(index1)
				elsif (item1 + item2) == sum/3
					@sack << [item1, item2]
					@diamonds.delete_at(index1)
					if index1 > index2
						@diamonds.delete_at(index2)
					else
						@diamonds.delete_at(index2 - 1)
					end
				end
			end
		end

		@sack.map{|x|x.sort}.uniq
	end


	def sum
		@sum = @original_diamonds.inject(0) { |item, sum| sum += item }
	end

end

end


describe DiamondDistributor do
	context 'true cases'do
	describe '#distributable?'do
	it "should return true for [1,2,3,4,5]" do
		expect(DiamondDistributor.new([1,2,3,4,5]).distributable?).to eq(true)
	end
	it "should return true for [1,2,3,4,5,6,7,8]" do
		expect(DiamondDistributor.new([1,2,3,4,5,6,7,8]).distributable?).to eq(true)
	end
	

end

end
context 'false cases' do
	describe'#distributable?'do
	it "should return false for [1,2,3,4]" do
		expect(DiamondDistributor.new([1,2,3]).distributable?).to eq(false)
	end

	it "should return false for [1,2,3,4,5,6,7]" do
		expect(DiamondDistributor.new([1,2,3,4,5,6,7]).distributable?).to eq(false)
	end
end
end

end

