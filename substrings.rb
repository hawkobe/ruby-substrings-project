def substrings(string, dictionary)
  contained_words = []
  dictionary.each do |e|
    if string.include?(e)
      contained_words << e
    end
  end
  contained_words.reduce(Hash.new(0)) do |result, occurances|
    result[occurances] += 1
    result
  end
end 
