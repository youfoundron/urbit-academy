:: Q13. Quadratic Builder III

:: Use the door you made, construct an expression that produces the gate representing:
:: y = 3x^2 + 2x + 1

:: And evaluates the gate on x = 5

:: Your code should return the number 86.

:: Hint: Check out the linear function gate-building door section in the notes for guidance.


:: Answer
=/  quadratic
  |_  [a=@ud b=@ud c=@ud]
  ++  $
    |=  x=@ud
    ^-  @ud
    (add (add (mul (mul a x) x) (mul b x)) c)
  --
%-  ~($ quadratic [3 2 1])
5
