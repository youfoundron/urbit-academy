:: Q17. Calculator App III

:: Write your previous code with sugar form for %= (centis)

:: Hint:
%=  a
b  c
d  e
==

a(b c, d e)


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
calc(a 12, b 13)
