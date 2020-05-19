require_relative 'error_check.rb'

class SemicolonCheck < ErrorCheck
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
    idx = nested_array[0] + 1
    while idx < nested_array[1]
      s = filedata[idx].strip
      if s[s.size - 1] != ';'
        @error_messages << { line_number: idx + 1, message: 'Semicolon missing at the end of line' }
      end
      idx += 1
    end
  end
end
