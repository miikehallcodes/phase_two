1. Describe the Problem

Two

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

verify_grammar = Check_grammar(str)

# str stands for the string that i will be checking for grammar rules

# verify_grammar outputs true or false depending on how it checks out

3. Create Examples as Tests

verify_grammer(" ") => fail "not a string"
verify_grammer("hello my name is mike") => false
verify_grammer("Hello my name is mike.") => true
verify_grammer("HELLO my name is mike.") => true
verify_grammer("Hello my name is mike!") => true
verify_grammer("Hello is your name James?") => true
verify_grammer("hELLO my name is mike.") => false
verify_grammer("HELLO my name is mike") => false
verify_grammer("Hello my name is mike;") => false

4. Implement the Behaviour
