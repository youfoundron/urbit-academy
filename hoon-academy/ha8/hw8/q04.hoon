:: Q4. Super Boxcar IV

:: Using ~& (sigpam), make your code print the generator's input value when it runs.

:: Make sure it works, and report the code below.

:: Optionally, give your message some color with > >> or >>>,
:: or interpolate the value into a tape for a message like "Your input was 5"

:: ~& takes two children, a Hoon expression to be printed, and the rest of the computation.


:: Answer
|=  x=@ud
^-  @ud 
~&  >  (crip "Your input was {<x>}")
~|  'Input must not be greater than 10'
?<  (gth x 10)
?:(&((gth x 3) (lte x 5)) 1 0)
