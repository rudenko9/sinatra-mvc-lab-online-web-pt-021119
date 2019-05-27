class PigLatinizer 
  
  def piglatinize(phrase)
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]
    consonants = consonants + consonants.upcase
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
vowels = vowels + vowels.upcase
    words = string.split
    words.map do |word|
      if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
        prefix = word.slice!(0..2)
        word << prefix + "ay"
      elsif consonants.include?(word[0]) && consonants.include?(word[1])
        prefix = word.slice!(0..1)
        word << prefix + "ay"
      elsif consonants.include?(word[0])
        prefix = word.slice!(0)
        word << prefix + "ay"
      elsif vowels.include?(word[0]) && word.size > 1
        word << "way"
      elsif vowels.include?(word[0]) && word.size == 1
        word << "way"
      end
    end
    words.join(" ")
  end

  
 
  def to_pig_latin(phrase)
    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")
  end

  
end 