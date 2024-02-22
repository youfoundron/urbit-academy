:: Q19. Working with Tapes III

:: This is an optional challenge question.

:: If I take my data from before,
:: but remove the `@` castings in front of every number,
:: what we did previously will fail.

:: ~[114 97 105 110 98 111 119 32 115 104 101 114 98 101 116]

:: Can you come up with a double application of ^-  that will make this return the text? 

:: Hint: The reason it doesn't work is that Dojo automatically parses numbers as @ud.

^-  tape
^-  (list @)
~[114 97 105 110 98 111 119 32 115 104 101 114 98 101 116]
