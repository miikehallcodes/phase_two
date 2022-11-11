def check_grammer(str)
  fail "not a string" if str.empty?
  end_character = [".","!","?"].include? str[-1]
  
  return str[0] == str[0].capitalize && end_character

end