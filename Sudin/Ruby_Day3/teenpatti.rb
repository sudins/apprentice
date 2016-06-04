class Card
	def initialize(n)
		@players_number = n
	end
	def carddeck
		spade=[1,2,3,4,5,6,7,8,9,10,11,12,13]
		club=[1,2,3,4,5,6,7,8,9,10,11,12,13]
		heart=[1,2,3,4,5,6,7,8,9,10,11,12,13]
		diamond=[1,2,3,4,5,6,7,8,9,10,11,12,13]
		cards=[spade,club,heart,diamond]

		players=Array.new(@players_number,[])
			
			(0..@players_number).each_with_index do |item,index|
			card_type = cards.sample
			the_card = card_type.sample
				card_type.delete(the_card)
			player[index] << the_card		
	
			(0..@players_number).each_with_index do |item,index|
			card_type = cards.sample
			the_card = card_type.sample
				card_type.delete(the_card)
			player[index] << the_card		
		
			(0..@players_number).each_with_index do |item,index|
			card_type = cards.sample
			the_card = card_type.sample
				card_type.delete(the_card)
			player[index] << the_card		
		
		end
	end
end

obj = Card.new(3)
obj.carddeck
