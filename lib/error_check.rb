class ErrorCheck

	attr_accessor :error_messages

	def initialize
		@error_messages = []
	end

	def opening_curly_bracket_position(filedata, starting_line)
		idx = starting_line
		while idx < filedata.size
			return idx if filedata[idx].include?('{')
			idx += 1
		end
		-1
	end

	def closing_curly_bracket_position(filedata, starting_line)
		idx = starting_line
		while idx < filedata.size
			return idx if filedata[idx].include?('}')
			idx += 1
		end
		-1
	end

	def find_classes(filedata)
		classes = []
		idx = 0
		while idx < filedata.size
			if filedata[idx].include?('{')
				opening = idx
			elsif filedata[idx].include?('}')
				closing = idx
				classes << [opening, closing]
			end
			idx += 1
		end
		classes
	end
end
