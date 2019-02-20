class PigLatinizer
  def piglatinize(text)
    words = text.split(" ")
    translated = words.map {|word| pig_latin(word)}
    translated.join(" ")
  end

  


def pig_latin(text)
    if text =~ (/\A[aeiou]+.*/i)
      "#{text}way"
    else
      split = text.match(/([^aeiou]+)([a-z]*)/i)
      "#{split[2]}#{split[1]}ay"
    end
  end


end
