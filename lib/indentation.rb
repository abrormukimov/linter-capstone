require_relative 'error_check.rb'

class IndentationCheck < ErrorCheck
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
    if filedata[nested_array[0]][0] == ' '
      @error_messages << { line_number: nested_array[0] + 1, message: 'Remove indentation from this line' }
    end
    if filedata[nested_array[1]][0] == ' '
      @error_messages << { line_number: nested_array[1] + 1, message: 'Remove indentation after closing curly bracket' }
    end
    idx = nested_array[0] + 1
    while idx < nested_array[1]
      s = filedata[idx]
      @error_messages << { line_number: idx + 1, message: 'Add two spaces before attributes' } if s[0..1] != '  '
      @error_messages << { line_number: idx + 1, message: 'Too many spaces before attributes' } if s[0..2] == '   '
      idx += 1
    end
  end
end
