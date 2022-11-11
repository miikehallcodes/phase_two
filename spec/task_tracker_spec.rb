require "task_tracker"

RSpec.describe "task_tracker" do 
  context "if given an empty string" do 
    it "fails" do
    expect { task_tracker("") }.to raise_error "this is not a string"
    end
  end
   context "if #TODO is at the begining of a sentence" do 
    it "returns true" do
        to_do = task_tracker("#TODO call mum today.")
        expect(to_do).to eq true
    end
   end 
   context "if #TODO is at the end of a sentence" do 
    it "returns true" do
        to_do = task_tracker("remember to submit your homework #TODO")
        expect(to_do).to eq true
    end
   end
   context "if #TODO is in the middle of a sentence" do 
    it "returns true" do
        to_do = task_tracker("Your final test is on #TODO 13th July 2023")
        expect(to_do).to eq true
    end
   end
   context "if the #TODO is typed incorrectly" do 
    it "returns false" do
        to_do = task_tracker("todo water plants at 11:00")
        expect(to_do).to eq false
    end
   end
   context "if the #TODO is not included in the sentence" do 
    it "returns false" do
        to_do = task_tracker("The world cup is happening in two weeks remeber to book your tickets")
        expect(to_do).to eq false
    end
   end
end