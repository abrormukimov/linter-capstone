require_relative 'error_check.rb'

class SpaceAfterColonCheck < ErrorCheck
  def initialize(filedata)
    super()
    check_for_errors(filedata)
  end

  def check_for_errors(filedata)
    classes = find_classes(filedata)
    classes.each do |c|
      check_class(filedata, c)
    end
  end

  def check_class(filedata, nested_array)
    idx = nested_array[0]
    while idx < nested_array[1]
      s = filedata[idx].strip
      if s.include?(':') && !s.include?(': ')
        @error_messages << { line_number: idx + 1, message: 'Space after colon is missing' }
      end
      idx += 1
    end
  end
end
