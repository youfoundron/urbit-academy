:: Q21. Calculator App VII

:: This question is OPTIONAL.

:: You can now use your calculator core and %~ to chain together computations, like

:: (3+5)*2=16

:: Try creating a computation with two or more steps like that.

:: Hint:
:: You can pass the result of calling %~ as part of the sample for another call of %~ .
:: This may be easier to read and write using sugar syntax.

:: Hint:
:: You only have to declare the door and use => or =< once. Just use multiple nested %~ .


:: Answer
:: (3 + 5) * 2
=/  calc
  =/  [a=@ud b=@ud]
    [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
%~  mul-arm
  calc
[~(add-arm calc [3 5]) 2]
