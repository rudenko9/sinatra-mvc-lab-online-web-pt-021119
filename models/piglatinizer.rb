class PigLatinizer 
  
  def piglatinize(phrase)
    

  
 
  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

  
end 