1. Describe the Problem

\_put or write the user story here. Add only clarifying notes you might have

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO

2. Design the Method Signature

\_include the name of a method, its parameters, return value and side effects

to_do = task_tracker("str")

# \* str is a string that will pass in all text the user has

# \* to_do will evaluate to true or false depending on if the condition has been met

3. Create Examples as Tests

\_make a list of examples of what the method will take in return.

to_do("") => fail "this is not a string"
to_do("#TODO call mum today.") => true
to_do("remember to submit your homework #TODO") => true
to_do("Your final test is on #TODO 13th July 2023") => true
to_do("todo water plants at 11:00") => false
to_do("The world cup is happening in two weeks remember to book your tickets") => false
to_do("#ToDo book dentist appointment) => false

4. Implement the Behaviour
