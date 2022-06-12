# require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  contained_words = []
  string_array_downcase = string.downcase.split(' ')

  dictionary.each do |word|
    string_array_downcase.each do |elem|
      if elem.include?(word)
        contained_words << word
      end
    end
  end
  contained_words.reduce(Hash.new(0)) do |result, occurances|
    result[occurances] += 1
    result
  end
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
