:: Q21. Tape Welder I

:: Write a gate that uses recursion to take a list of tapes
:: and returns all of the tapes welded together in the right order

:: Save it as a generator and test it to make sure it works.

:: Make sure to specify that the input should be a (list (list @tD))
:: or a (list tape), and use ^- to specify that the output should be a tape.

:: For example running 
:: > +welder ~["Where " "did " "you " "come " "from, " "where " "did " "you " "go? " "Where " "did " "you " "come " "from " "Cotton-Eyed " "Joe?"]

:: Should return:
:: "Where did you come from, where did you go? Where did you come from Cotton-Eyed Joe?"

:: Report the code below:

:: Hint: For guidance you can look at the number list adder example at the end of the notes.
:: You can make a solution with similar logic.

:: Hint: Use ?~ and i and t faces of the list. Make sure you're welding in the right order.


:: Answer
|=  wordlist=(list tape)
^-  tape
=/  result 
  ""
|-
?~  wordlist
  result
%=  $
  result  (weld result i.wordlist)
  wordlist  t.wordlist
==
