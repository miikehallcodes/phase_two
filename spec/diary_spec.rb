require "diary"

RSpec.describe "make_snippet method" do
    context "given an empty string" do
       it "returns empty string if nothing is entered" do 
         result = make_snippet("")
         expect(result).to eq ""
       end
    end 
    context "given a string of five words" do
      it "returns that string" do 
       result =    make_snippet("hello my name is Mike")
       expect(result).to eq "hello my name is Mike"
     end 
    end
    context "given a string of six words" do
      it "returns the first five with ..." do 
       result =    make_snippet("hello my name is Mike Hall")
       expect(result).to eq "hello my name is Mike..."
      end 
    end
end