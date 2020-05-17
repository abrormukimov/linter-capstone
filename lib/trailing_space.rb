require_relative 'error_check.rb'

class TrailingSpaceCheck < ErrorCheck
  def initialize(filedata)
    super()
    check_for_errors(filedata)
  end

  def check_for_errors(filedata)
    filedata.each_with_index do |line, idx|
      if line[line.size - 1] == ' '
        @error_messages << { line_number: idx + 1, message: 'Trailing space at the of the line' }
      end
    end
  end
end
