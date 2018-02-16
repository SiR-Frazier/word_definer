class Word
    @@words = []
    attr_accessor :word
    attr_accessor :definition

  def initialize (attributes)
    @word = attributes.fetch(:word)
    @definition = attributes.fetch(:definition)
  end

  def add_word
    @word
  end

end
