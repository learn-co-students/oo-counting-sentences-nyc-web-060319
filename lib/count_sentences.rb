require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    split_by_period = self.split(".")
    split_by_question = []
    split_by_period.each do |str| 
      split_by_question << str.split("?")
    end
    split_by_question = split_by_question.flatten
    #binding.pry
    split_by_exclamation = []
    
    split_by_question.each do |str|
      split_by_exclamation << str.split("!")
    end
    split_by_exclamation = split_by_exclamation.flatten
    split_by_exclamation.delete_if{|str| str.empty?()}
    #binding.pry
    split_by_exclamation.length
  end
end