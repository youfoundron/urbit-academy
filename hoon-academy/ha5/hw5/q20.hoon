:: Q20. Calculator App VI

:: Write your previous code with sugar syntax for %~ (censig).

:: Hint:
~(arm core new-sample)


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
~(add-arm calc [12 13])
