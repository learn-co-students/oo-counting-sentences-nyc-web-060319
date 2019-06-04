require 'pry'

class String

  def sentence?
    return self.end_with?('.')
  end

  def question?
    return self.end_with?('?')
  end

  def exclamation?
    return self.end_with?('!')
  end

  def count_sentences
    delimiters =['.', '!', '?']
    sentence_list = self.split(Regexp.union(delimiters))
    return sentence_list.count do |sentence|
      sentence != ''
    end
  end
end