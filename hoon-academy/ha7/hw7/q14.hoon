:: Q14. Quadratic Redux I

:: Recall that in Q11 of %hw6, you built a door which could build a gate representing any quadratic equation.
:: However, since you used @ud, it was limited to natural numbers.

:: Rewrite the door to use @rs (single-precision floating point) so it can really represent quadratic equations.

:: Report just the door below.

:: Hint: add:rs is the right library gate to use instead of add, mul:rs instead of mul.


:: Answer
|_  [a=@rs b=@rs c=@rs]
++  $
  |=  x=@rs
  ^-  @rs
  (add:rs (add:rs (mul:rs (mul:rs a x) x) (mul:rs b x)) c)
--