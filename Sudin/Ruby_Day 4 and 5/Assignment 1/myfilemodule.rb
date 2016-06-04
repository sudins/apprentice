
module MyFileModule
  def create_file
    puts "Hello Hello !"
    f = File.new("untitled.txt","r+")
			f.each_line do |line|
			puts line
			end
			f.close
  end

  def edit_file
    begin

  	file = File.open("untitled.txt", "w+")
	   rescue
    file.puts("What you write here gets overrided here, think  So corectly think and write")
	  file.close
   end
  end

  def delete_file
    begin
    file = File.delete("untitled.txt")
    rescue  
    end
  	
  end
end

class Open
  include MyFileModule
end

obj1 = Open.new
obj1.create_file
obj1.edit_file
#obj1.delete_file  "this line deletes the file hence not in coded form"
