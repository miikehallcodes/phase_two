require "check_grammer"

RSpec.describe "check_grammer" do 
    context "if given an empty string" do 
      it "fails" do 
        expect { check_grammer("") }.to raise_error "not a string"
      end 
    end
    context "if a sentence begins with a capital letter and ends with a full stop" do 
      it "returns true" do 
         result = check_grammer("Hello my name is mike.")
         expect(result).to eq true
      end 
    end 
    context "if a sentence begins with the first word in capitals and ends in a full stop" do 
      it "returns true" do 
         result = check_grammer("HELLO my name is mike.")
         expect(result).to eq true
      end 
    end 
    context "if a sentence begins with the first letter in capitals and ends in a exclamation mark" do 
      it "returns true" do 
         result = check_grammer("Hello my name is mike!")
         expect(result).to eq true
      end 
    end 
    context "if a sentence begins with the first letter in capitals and ends in a question mark" do 
      it "returns true" do 
         result = check_grammer("Hello is your name James?")
         expect(result).to eq true
      end 
    end 
    context "if a sentence begins with the first letter is lowercase and ends in a full stop" do 
      it "returns false" do 
         result = check_grammer("hELLO my name is mike.")
         expect(result).to eq false
      end 
    end 
    context "if a sentence begins with the first word is uppercase and does not end with a full stop" do 
      it "returns false" do 
         result = check_grammer("HELLO my name is mike")
         expect(result).to eq false
      end 
    end 
    context "if a sentence begins with the first letter in uppercase but ends with a semi-colon" do 
      it "returns false" do 
         result = check_grammer("Hello my name is mike;")
         expect(result).to eq false
      end 
    end 
end 
