dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(sentence, dictionary)
  matches =Hash.new(0)
  sentence.downcase!
  strings =sentence.split(" ")
  strings.map do |sub_strings|
    dictionary.map do |word|
      if sub_strings.include?(word)
        matches[word] += 1
      end
    end
  end
  return matches
end

puts substring("Howdy! partner sit down!. How's it going?", dictionary)
