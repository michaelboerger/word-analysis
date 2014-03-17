require 'rspec'
require_relative 'word_analysis'

describe WordAnalysis do

  it "takes in text" do
    input = WordAnalysis.new('HERE IS SOME DUMB TEXT')
    expect(input.text).to eq('HERE IS SOME DUMB TEXT')
  end

  it "counts how many words are in the text" do
    input = WordAnalysis.new('HERE IS SOME DUMB TEXT WITH EIGHT WORDS')
    expect(input.word_number).to eq(8)
  end

  it "counts how many times a word is used in the text" do
    input = WordAnalysis.new('This sentence uses the word apple twice. That last sentence was FULL OF LIES.')
    expect(input.word_count).to eq({"This"=>1, "sentence"=>2, "uses"=>1, "the"=>1, "word"=>1, "apple"=>1, "twice"=>1,
      "That"=>1, "last"=>1, "was"=>1, "FULL"=>1, "OF"=>1, "LIES"=>1})
  end

  it "counts how many letters are in the text" do
    input = WordAnalysis.new('ssssssnnnake')
    expect(input.letter_count).to eq({"s"=>6, "n"=>3, "a"=>1, "k"=>1, "e"=>1})
  end

  it "counts how many symbols are in the text" do
    input = WordAnalysis.new('In comic strips they say #@*&#@! to swear')
    expect(input.symbol_number).to eq({"#"=>2, "@"=>2, "*"=>1, "&"=>1, "!"=>1})
  end

  it "counts the three most common words" do
    input = WordAnalysis.new("Ice Ice Baby, Ice Ice Baby Ice Ice Baby, Ice Ice Baby All right stop, Collaborate and listen
      Ice is back with my brand new invention Something grabs a hold of me tightly Flow like a harpoon daily and nightly
      Will it ever stop? Yo I don't know Turn off the lights and I'll glow
      To the extreme I rock a mic like a vandal Light up a stage wax a chump like a candle.")
    expect(input.three_most_common_words).to eq({"Ice"=>9, "a"=>7, "Baby"=>4})
  end

  it "counts the three most common letters" do
    input = WordAnalysis.new("Whales talk like this: MAAAAAAAARRRRRRRRRRRRRUUUUUUUUUUUUUUUU")
    expect(input.three_most_common_letters).to eq({"U"=>16, "R"=>13, "A"=>8})
  end

end
