require_relative 'indentation.rb'
require_relative 'semicolon.rb'
require_relative 'trailing_space.rb'
require_relative 'spaceaftercolon.rb'

class MyLinter
	def initialize(filename)
		content = File.open(filename)
		file_data = content.readlines.map(&:chomp)
		# file_data.each { |line| puts line }
		check_errors(file_data)
		output_errors
	end

	def check_errors(filedata)
		@indentation = IndentationCheck.new(filedata)
		@semicolon = SemicolonCheck.new(filedata)
		@spaceaftercolon = SpaceAfterColonCheck.new(filedata)
		@trailing_space = TrailingSpaceCheck.new(filedata)
	end

	def output_errors
		puts @indentation.error_messages.count.to_s + ' indentaion errors'
		puts @semicolon.error_messages.count.to_s + ' semicolon errors'
		puts @spaceaftercolon.error_messages.count.to_s + ' spaceaftercolon errors'
		puts @trailing_space.error_messages.count.to_s + ' trailing space errors'
		puts
		@indentation.error_messages.each { |msg| p msg }
		@semicolon.error_messages.each { |msg| p msg }
		@spaceaftercolon.error_messages.each { |msg| p msg }
		@trailing_space.error_messages.each { |msg| p msg }
	end
end
