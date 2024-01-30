:: Q8. Dices

:: This is an OPTIONAL challenge question

:: Modify the dice.hoon example generator from class to create and output 3 random dice rolls in a cell, like

:: [3 1 6]

:: You can just delete the betting mechanic, or modify it.

:: Hint: look at the optional section in the notes for generating multiple random numbers. You can also check the following two doc pages:
:: https://docs.urbit.org/language/hoon/reference/stdlib/3d#radsog 
:: https://docs.urbit.org/language/hoon/reference/rune/tis#-tisket 


:: Answer
:-  %say
|=  [[* eny=@uvJ *] [n=@ud ~] *]
:-  %noun
=/  rolls
  ~(. og eny)
=^  a  rolls
  (rads:rolls n)
=^  b  rolls
  (rads:rolls n)
=^  c  rolls
  (rads:rolls n)
~&  "You rolled {<+(a)>}, {<+(b)>} & {<+(c)>}"
[+(a) +(b) +(c)]
