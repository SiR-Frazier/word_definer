require('definer')
require('pry')
require('rspec')

describe(Word) do

  describe("#add_word") do
    it ("shows word once user adds the word to the input field") do
      word = Word.new({:word => "remember", :definition => "to think of (something or someone from the past) again"})
      expect(word.add_word()).to(eq("remember"))
    end
  end
end
