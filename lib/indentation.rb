require_relative 'error_check.rb'

class IndentationCheck < ErrorCheck

	def initialize(filedata)
		super()
		check_for_errors(filedata)
	end

	def check_for_errors(filedata)
		@error_messages
	end

end