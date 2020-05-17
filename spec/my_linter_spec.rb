require_relative '../lib/my_linter'

describe 'MyLinter' do
  cssfile = "./resources/cssfile.css"
  linter = MyLinter.new(cssfile)
  linter.check_errors

  describe '#indentation' do
    it 'should return 10 indentation errors' do
      expect(linter.indentation.error_messages.count).to eq(10)
    end
  end

  describe '#spaceaftercolon' do
    it 'should return 5 spaceaftercolon errors' do
      expect(linter.spaceaftercolon.error_messages.count).to eq(5)
    end
  end

  describe '#semicolon' do
    it 'should return 3 semicolon errors' do
      expect(linter.semicolon.error_messages.count).to eq(3)
    end
  end

  describe '#trailing_space' do
    it 'should return 8 semicolon errors' do
      expect(linter.trailing_space.error_messages.count).to eq(8)
    end
  end
end