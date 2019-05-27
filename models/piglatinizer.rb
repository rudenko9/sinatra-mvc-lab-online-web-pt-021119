class PigLatinizer 
  attr_accessor :text 
  
  @@all = []
  def initialize(text)
    @text = text.downcase 
    end 
  
  def self.new 
    @@all 
  end
  
end 