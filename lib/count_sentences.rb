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
    array = self.split(" ")
    array.each_with_index do |string, index|
      if string.question? || string.exclamation?
        array[index] = string[0..(string.length)-2] + "."
      end
    end
   newString = array.join
   newArray = newString.split(".")
   return newArray.length
end

end

# x = "This is a string! It has three sentences. Right?"
# y = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
# puts y.count_sentences.inspect
