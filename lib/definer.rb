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

  def add_definition
    @definition
  end

  def self.all()
    @@words
  end

  def save
    @@words.push(self)
  end

  def self.clear()
    @@words = []
  end

  def self.find(x)
    @@words.each do |word|
      if word.word == x
        return word
      end
    end
  end
end

# class Definition < Word
#   attr_accessor :definition
#
#   def initialize(attributes)
#     @definition = definition
#   end
#
#   def add_new_definition
#     @definition
#   end
# end
