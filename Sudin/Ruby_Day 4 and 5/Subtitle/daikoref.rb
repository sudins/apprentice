class Subtitle
  class FileHandler
    attr_reader :file_path

    def initialize(file_path, content = '')
      @file_path = file_path
      @content = content
      validate_file_name
    end

    def file
      File.open(@file_path)
    end

    def save
      o_file = File.open('modified_' + @file_path, 'w')
      o_file.puts @content
      o_file.close
    end

    private
    def validate_file_name
      unless @file_path.match(/.srt/)
        raise InvalidFile
      end
    end
  end

  
  class InvalidFile < StandardError

  end

  class Parser
    def initialize(file)
      @file = file
    end

    def parsed_content
      parse
    end

    private
    def parse
      whole_content = @file.read
      chunks = whole_content.split("\r\n\r\n")
      @syntax_tree = chunks.map do |chunk|
        lines = chunk.split("\r\n")
        structure = {content: ''}
        lines.each do |line|
          if lines.index(line) == 0
            structure[:line_number] = line
          elsif line.match(' --> ')
            structure[:time_line] = line
          else
            structure[:content] << (line + "\r\n")
          end
        end
        structure
      end
    end

  end
  class Processor
    def initialize(content:, adjustment:)
      @content = content
      @adjustment = adjustment
    end

    def modified_content
      modify
      get_string_from_tree
    end

    private
    def modify
      @modified_content = @content.map do |chunk|
        time_line = chunk[:time_line]
        start_time_s, end_time_s = time_line.split(' --> ')

        format= '%H:%M:%S,%L'

        start_time = Time.strptime(start_time_s, format)
        end_time = Time.strptime(end_time_s, format)

        start_time_o = start_time + @adjustment
        end_time_o = end_time + @adjustment

        output_time = "#{start_time_o.strftime(format)} --> #{end_time_o.strftime(format)}"
        chunk[:time_line] = output_time
        chunk
      end
    end

    def get_string_from_tree
      str = ''
      @modified_content.each do |chunk|
        str << [
            chunk[:line_number],
            chunk[:time_line],
            chunk[:content]
        ].join("\r\n")
      end

      str
    end
  end

  class Base
    def initialize(file_path:, adjustment:)
      @file_path = file_path
      @adjustment = adjustment
    end

    def process
      file = FileHandler.new(@file_path).file
      parsed_content = Parser.new(file).parsed_content

      modified_content = Processor.new(content: parsed_content, adjustment: @adjustment).modified_content

      FileHandler.new(@file_path, modified_content).save
    end
  end
end

class Array
  def +(array2)
    return false if self.length != array2.length
    self.map.with_index do |item, index|
      array2[index] + self[index]
    end
  end
end

