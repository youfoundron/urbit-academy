:: Q15. Quadratic Redux II

:: Using that door, build a gate that represents some quadratic equation,
:: then plug some value for x into that gate. Your code should return a @rs number.

:: Hint: The same operations you did last time, now with @rs.

:: Hint: Recall that @rs is formatted differently than @ud. For example 0 is .0 and 1 is .1.
:: But now you can use negative and fractional numbers as well.


:: Answer
=/  quadratic
  |_  [a=@rs b=@rs c=@rs]
  ++  $
    |=  x=@rs
    ^-  @rs
    (add:rs (add:rs (mul:rs (mul:rs a x) x) (mul:rs b x)) c)
  --
%-  ~($ quadratic [.3 .2 .1])
.5.4
