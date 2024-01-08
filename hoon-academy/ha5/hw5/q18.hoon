:: Q18. Calculator App IV

:: Start with your code from the last question.
:: Modify it so that instead of returning the entire new core,
:: it runs an arm of the new core (with updated a, b values).

:: Verify that your code now returns a number that corresponds to add/sub/mul/div on the new values of a,b.

:: Hint:
:: You can set the new core as the subject and then invoke its arm,
:: or you can use the special syntax trick for %= (centis) shown in the notes.


:: Answer
=/  calc
  =/  [a=@ud b=@ud]
    [0 0]
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
add-arm:calc(a 12, b 13)

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
%=  add-arm.calc
  a  12
  b  13
==
