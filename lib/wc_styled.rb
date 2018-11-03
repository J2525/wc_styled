require "wc_styled/version"

module WcStyled

  class Error < StandardError;
  end

  def self.run(path)
    file = ""
    File.open("#{path}", "r:UTF-8") do |f|
      file = f.read
    end


    line_value = file.split("\n").length
    word_value = file.split(" ").length
    byte_size = "#{file}".bytesize
    puts "　　　　　　　　#{line_value}　　　　　　#{word_value}      #{byte_size} "
  end
