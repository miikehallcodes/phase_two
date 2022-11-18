require "grammar_stats"

RSpec.describe GrammarStats do 
  context "if text begins with a capital letter and ends with a punctuation mark" do
    it "returns true" do
      gram_check = GrammarStats.new
      check = gram_check.check("Hello my name is mike.")
      expect(check).to eq true  
    end
  end 
  context "if text does not begin with a capital letter or ends with a punctuation mark" do
    it "returns false" do
      gram_check = GrammarStats.new
      check = gram_check.check("Hello my name is mike")
      expect(check).to eq false
    end
  end
  describe "#percentage_good" do 
    context "given only good strings" do 
      it "returns 100(%)" do 
        grammar_stats = GrammarStats.new
        grammar_stats.check('Hello my names Mike.')
        grammar_stats.check('Hello my names Mike.')
        expect(grammar_stats.percentage_good).to eq 100
     end
   end
   context "given only one correct string out of 2" do 
      it "returns 50(%)" do 
        grammar_stats = GrammarStats.new
        grammar_stats.check('Hello my names Mike.')
        grammar_stats.check('Hello my names Mike')
        expect(grammar_stats.percentage_good).to eq 50
     end
   end
   context "given only one correct string out of 4" do 
    it "returns 25(%)" do 
      grammar_stats = GrammarStats.new
      grammar_stats.check('Hello my names Mike.')
      grammar_stats.check('Hello my names Mike')
      grammar_stats.check('Hello my names Mike')
      grammar_stats.check('Hello my names Mike')
      expect(grammar_stats.percentage_good).to eq 25
   end
 end
  end
end
    