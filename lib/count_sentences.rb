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
    if self.split.count > 0
      self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
    else
      0
    end
  end
end
