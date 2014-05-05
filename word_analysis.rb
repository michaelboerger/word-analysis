class WordAnalysis

  def initialize (text)
    @text = text
  end

  attr_reader :text

# I guess this isn't needed but I WROTE IT AND I'M LEAVING IT HERE
  def word_number
    text.split.size
  end

  def word_count
    text.scan(/\w+/).inject(Hash.new(0)) { |h, c| h[c] += 1; h }
  end

  def letter_count
    text.scan(/[a-zA-Z]/).inject(Hash.new(0)) { |h, c| h[c] += 1; h }
  end

  def symbol_number
    text.scan(/[^a-zA-Z0-9 ]/).inject(Hash.new(0)) { |h, c| h[c] += 1; h }
  end

  def three_most_common_words
    text_hash = word_count
    text_hash.sort_by { |k, v| v }.reverse.take(3).to_h
  end

  def three_most_common_letters
    text_hash = letter_count
    text_hash.sort_by { |k, v| v }.reverse.take(3).to_h
  end
end
