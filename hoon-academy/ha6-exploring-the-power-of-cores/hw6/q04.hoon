:: Q4.  Boxcar II

:: We want to show that we can do the same operation
:: with %= (centis), %~ (censig), or %- (cenhep)

:: Take the core (including sample n) from last question
:: and use the %= (centis) rune to make a new core with a new x value,
:: and then run the $ arm of that core.

:: Starting with the same core, perform the same operation in one step with %~ (censig)

:: Starting with the same core, perform the same operation in one step with %- (cenhep)

:: Report the 3 versions of the code below:

:: If x=4 or x=5, your code should output 1, otherwise it should output 0. 

:: You can set the core as the subject with => or =<
:: or you can pin it under a face with =/


:: Answer
:: Using %= (centis)
=/  x
  4
=/  boxcar
  |% 
  ++  $
    ?:(&((gth x 3) (lte x 5)) 1 0)
  --
%=  $.boxcar
  x  5
==

:: Using %~ (censig)
=/  x
  4
=/  boxcar
  |% 
  ++  $
    ?:(&((gth x 3) (lte x 5)) 1 0)
  --
%~  $
  boxcar
5

:: Using %- (cenhep)
=/  x
  4
=/  boxcar
  |% 
  ++  $
    ?:(&((gth x 3) (lte x 5)) 1 0)
  --
%-  boxcar
5
