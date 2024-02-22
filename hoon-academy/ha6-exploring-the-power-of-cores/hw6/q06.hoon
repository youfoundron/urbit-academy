:: Q6.  Boxcar IV

:: Take your door from last question and change it to a gate using |= (bartis).
:: Recall that a gate is just a door with a single $ arm, with the arm hidden.

:: Starting with that gate, use %= to create a new version of the gate
:: with x changed to a different value, then run the $ arm of that new gate.

:: Starting with that same gate, perform that same operation in one step with %~ (censig)

:: Starting with that same gate, perform that same operation in one step with %-  (cenhep)

:: Report the 3 versions of the code below:


:: Answer
:: Using centis ($=)
=/  boxcar
  |=  x=@ud
  ?:(&((gth x 3) (lte x 5)) 1 0)
%=  $.boxcar
  x  5
==

:: Using censig ($=)
=/  boxcar
  |=  x=@ud
  ?:(&((gth x 3) (lte x 5)) 1 0)
%~  $
  boxcar
5

:: Using cenhep ($=)
=/  boxcar
  |=  x=@ud
  ?:(&((gth x 3) (lte x 5)) 1 0)
%-  boxcar
5
