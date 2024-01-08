:: Q19. Calculator App V

:: Start with just the core from Q15.
:: Use the %~ (censig) to take your core, change it's a, b values, and run an arm all in one step.
:: Use tall form for %~ (censig)

:: Hint:
%~  arm  core  new-sample

:: Hint: 
:: There are two ways to go about this.
:: You can set the original core as the entire subject with => or =<.
:: Then the second argument to %~ should be . (dot) since the core is the entire subject.

:: Alternatively, you can pin the original core to a face like 
=/ calc 
|%
:: ...
:: Then the second argument to %~ would be calc.


:: Answer
=>
=/  [a=@ud b=@ud]
  [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
%~  add-arm
  .
[12 13]


:: Alternatively
=/  calc
  =/  [a=@ud b=@ud]
    [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
%~  add-arm
  calc
[12 13]
