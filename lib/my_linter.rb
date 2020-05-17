require_relative 'indentation.rb'
require_relative 'semicolon.rb'
require_relative 'trailing_space.rb'
require_relative 'spaceaftercolon.rb'

class MyLinter

	attr_reader :file_data, :semicolon, :spaceaftercolon, :indentation, :trailing_space

	def initialize(filename)
		content = File.open(filename)
		@file_data = content.readlines.map(&:chomp)
	end

	def check_errors
		@indentation = IndentationCheck.new(@file_data)
		@semicolon = SemicolonCheck.new(@file_data)
		@spaceaftercolon = SpaceAfterColonCheck.new(@file_data)
		@trailing_space = TrailingSpaceCheck.new(@file_data)
	end

	def output_errors
		puts @indentation.error_messages.count.to_s + ' indentaion errors'
		puts @semicolon.error_messages.count.to_s + ' semicolon errors'
		puts @spaceaftercolon.error_messages.count.to_s + ' spaceaftercolon errors'
		puts @trailing_space.error_messages.count.to_s + ' trailing space errors'
		puts
		@indentation.error_messages.each { |msg| puts 'Line: ' + msg[:line_number].to_s + ', ' + msg[:message] }
		@semicolon.error_messages.each { |msg| puts 'Line: ' + msg[:line_number].to_s + ', ' + msg[:message] }
		@spaceaftercolon.error_messages.each { |msg| puts 'Line: ' + msg[:line_number].to_s + ', ' + msg[:message] }
		@trailing_space.error_messages.each { |msg| puts 'Line: ' + msg[:line_number].to_s + ', ' + msg[:message] }
	end
end
