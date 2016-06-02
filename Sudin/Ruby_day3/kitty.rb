class Player
	def initialize(n)
		@number_of_player = n
	end
	def 
	 
	end
end

class Card
	def initialize()
	
	end
	def shuffle
		itta = ["bassa","rani","joker",1,2,3,4,5,6,7,8,9,10].sample
		paan = ["bassa","rani","joker",1,2,3,4,5,6,7,8,9,10].sample
		chid = ["bassa","rani","joker",1,2,3,4,5,6,7,8,9,10].sample
		surat = ["bassa","rani","joker",1,2,3,4,5,6,7,8,9,10].sample
	end
end

obj = Card.new[1,2,3,4,5,6,7,8,9,10,"bassa","rani","joker"]
obj.shuffle

obj = Player.new(3)

