:: Q1. Calculator App Redux I 

:: Recall that in Q15 of %hw5, you used |% (barcen) to make a core that represented a simple calculator app.

=/  [a=@ud b=@ud]
  [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--

:: Write that same core as a door with |_ (barcab).
:: Report just the door below.


:: Answer
|_  [a=@ud b=@ud]
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--