:: Q12. Quadratic Builder II

:: Using the door you made in the last question, compose an expression that produces the gate representing:

:: y = 3x^2 + 2x + 1

:: The result will be a gate, which is a core, so the output will look like:

:: < 1.udm
::   [ x=@ud
:: ...

:: Report the code below.

:: Hint: Check out the linear function gate-building door section in the notes for guidance.


:: Answer
=/  quadratic
  |_  [a=@ud b=@ud c=@ud]
  ++  $
    |=  x=@ud
    ^-  @ud
    (add (add (mul (mul a x) x) (mul b x)) c)
  --
~($ quadratic [3 2 1])
