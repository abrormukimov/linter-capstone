require_relative 'error_check.rb'

class SpaceAfterColonCheck < ErrorCheck

	def initialize(filedata)
		super()
		check_for_errors(filedata)
	end

	def check_for_errors(filedata)
		@error_messages << { :line_number => 1, :message => 'Error' }
	end

end