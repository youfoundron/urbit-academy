:: Q16. Calculator App II

:: Start with just the core from last question.
:: Use the %= (centis) rune to create a new copy of the core with new values for a and b.
:: Write it with tall form for %= (centis).

:: If successful the output should be a core, which looks something like:

:: < 4.ufa
::   [ [a=@ud b=@ud]
:: ...

:: You won't be able to see the changed values.

:: Hint: 
:: There are two ways to go about this.

:: You can set the original core as the entire subject with => or =<.
:: Then the first argument to %= should be . (dot) since the core you want to modify is the whole subject.

:: Alternatively, you can pin the original core to a face like 
:: =/ calc 
:: |%
:: ...
:: Then the first argument to %= would be calc.


:: Answer

:: Copy the core from the last question...
=>
=/  [a=@ud b=@ud]
  [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--

:: Create a new copy of the core with new values for a and b...
=>
=/  [a=@ud b=@ud]
  [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
%=  .
  a  12
  b  13
==

:: Alternatively (with core pinned to a face)...
=/  calc
  =/  [a=@ud b=@ud]
    [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
%=  calc
  a  12
  b  13
==
