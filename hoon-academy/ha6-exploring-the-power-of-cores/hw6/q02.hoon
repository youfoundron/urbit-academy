:: Q2. Calculator App Redux II

:: Take the door, swap its sample to a different pair of numbers,
:: and run an arm in one step with %~ (censig).

:: You can set the door as the subject with => or =<,
:: or you can pin it to a name and reference it with =/

:: Use any form you like.

:: Hint: Basically rewrite your answer to Q19 or Q20 of %hw5 with |_ (barcab).


:: Answer
=/  calc
  |_  [a=@ud b=@ud]
  ++  add-arm  (add a b)
  ++  sub-arm  (sub a b)
  ++  mul-arm  (mul a b)
  ++  div-arm  (div a b)
  --
%~  add-arm
  calc
[2 2]
