def substrings(string, dictionary)
  contained_words = []
  dictionary.each do |e|
    if string.include?(e)
      contained_words << e
    end
  end
end 
