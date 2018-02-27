require('definer')
require('pry')
require('rspec')

describe(Word) do

  before do
    Word.clear()
  end

  describe("#add_word") do
    it ("shows word once user adds the word to the input field") do
      word = Word.new({:word => "remember", :definition => "to think of (something or someone from the past) again"})
      expect(word.add_word()).to(eq("remember"))
    end
  end

  describe("#add_definition") do
    it ("shows the definition for the input word") do
      word = Word.new({:word => "sleepy", :definition => "ready to fall asleep"})
      expect(word.add_definition()).to(eq("ready to fall asleep"))
    end
  end

  describe("#save") do
    it ("saves input word and definition") do
      word = Word.new({:word => "harbor", :definition => "a place to give protection"})
      # word2 = Word.new({:word => "benevolent", :definition => "friendly; generous"})
      word.save()
      # word2.save()
      expect(Word.all()).to(eq([word]))
    end
  end

  describe(".clear") do
    it ("clears words from the list") do
      word = Word.new({:word => "harbor", :definition => "a place to give protection"})
      word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe(".find") do
    it ("finds word and definition based on the name") do
      word = Word.new({:word => "jaunty", :definition => "carefree"})
      word.save()
      expect(Word.find("jaunty")).to(eq(word))
    end
  end
end
ßß
