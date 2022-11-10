require "word_counter"


RSpec.describe "count_words method" do
    context "if given an empty string" do 
      it "returns that string" do
        result = count_words("")
        expect(result).to eq ""
      end
    end
    context "if given multiple words" do 
      it "returns the total length of the words" do
        results = count_words("Hello My name is Michael Hall")
        expect(results).to eq 6
      end 
    end 
end