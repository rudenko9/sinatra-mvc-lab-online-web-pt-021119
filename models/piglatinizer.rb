class PigLatinizer 
  
  def piglatinize(word)
    conso = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]


  
 
  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

  
end 