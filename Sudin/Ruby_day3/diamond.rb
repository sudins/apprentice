 
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

