def count_words(str)
  words = str.split(" ")
  if words.length > 0
    return words.length 
  else
    return str
  end 
end 
