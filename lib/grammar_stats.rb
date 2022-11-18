class GrammarStats
  def initialize
    @true_score = 0
    @test_score = 0
  end

  def check(text)
    first_character = text.chars[0]
    end_character = [".","!","?"].include? text[-1] 
     checked_text = first_character == first_character.capitalize && end_character

     if checked_text == true 
      @true_score +=1
     end
     @test_score +=1
     return checked_text
    
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
  end

  def percentage_good

    percentage = ((@true_score / @test_score.to_f)*100).to_i
    return percentage
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end