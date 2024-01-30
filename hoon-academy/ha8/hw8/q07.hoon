:: Q7. Random Boxcar

:: Boxcar Inc. has conducted market research and determined that Urbit users enjoy gambling (such as with various internet assets).
:: They'd like you to implement a boxcar function which delivers dopamine thrill by generating random inputs.

:: Here we have the skeleton of a %say generator which just uses environmental entropy (no user input).
:: Fill it out to generate a random number from 0 to 5 and give that number as the input to your boxcar logic. 

:: :-  %say
:: |=  [[* eny=@uvJ *] * *]
:: :-  %noun
:: ______________________
:: ______________________

:: You can just use the original version of your boxcar logic, without crashes or library imports.

:: Save the code as random-boxcar.hoon in your gen folder, and you can test it with

:: +random-boxcar

:: which should produce 0 or 1 randomly.


:: Answer
:-  %say
|=  [[* eny=@uvJ *] * *]
:-  %noun
^-  @ud
=/  x
  (~(rad og eny) 6)
~&  (crip "Your input was {<x>}")
?:(&((gth x 3) (lte x 5)) 1 0)