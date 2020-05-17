require_relative '../lib/my_linter.rb'

cssfile = './resources/cssfile.css'
linter = MyLinter.new(cssfile)
linter.check_errors
linter.output_errors
