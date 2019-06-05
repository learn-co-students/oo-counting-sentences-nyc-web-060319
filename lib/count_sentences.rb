class String

  def sentence?
    self.end_with?(".")    
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences     
    sentence_arr = self.split(/[.!?]/)
    if sentence_arr.include?("")
      sentence_arr.delete("")
    end
    sentence_arr.length
  end
end
