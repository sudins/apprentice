class SubtitleInput
	
	def initialize(time)
		@time_delay = time
	end
	
	def reader
		f = File.open("untitled.txt", "r")
		f.each_line do |line|
  	puts line
		end

		line_num=0
		File.open('untitled.txt').each do |line|
  	puts "#{line_num =line_num + 1} #{line.chomp}"
		end

	end

	def modify
		
	end
	
end

input = SubtitleInput.new(5)
input.reader







