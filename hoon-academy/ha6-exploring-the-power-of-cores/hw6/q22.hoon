:: Q22. Tape Welder II

:: This is an OPTIONAL challenge question.

:: If you hadn't already, write your solution in the "natural" recursive style shown in the notes.
:: This lets us write a short solution with no extra variables needed, besides the input tape.

:: Make sure to include ^- to enforce that the output should be a tape.


:: Answer
|=  wordlist=(list tape)
|-
^-  tape
?~  wordlist
  ""
(weld i.wordlist $(wordlist t.wordlist))
