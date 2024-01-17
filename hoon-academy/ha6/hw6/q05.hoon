:: Q5.  Boxcar III

:: Take one of the versions of your code from last question
:: and change the core to a door that uses the |_ (barcab) rune,
:: so that x is no longer explicitly pinned (no =/  x or =+  x).

:: Make sure it still works and returns 0 or 1.

:: (You don't have to call it 3 ways, unless you want to)


:: Answer
=/  boxcar
  |_  x=@ud
  ++  $
    ?:(&((gth x 3) (lte x 5)) 1 0)
  --
(boxcar 5)
