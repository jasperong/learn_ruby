def translate(string)
  words = string.split
  vowels = ["a", "e", "i", "o", "u"]

  words.map do |word|
    word = word.split("")
    until vowels.include?(word[0])
      if !vowels.include?(word[0])
        word.rotate!(1)
      elsif word[0] == "q" && word[1] == "u"
        word.rotate!.rotate!
      end
    end
    word << "ay"
    word.join
  end.join(" ")
end
