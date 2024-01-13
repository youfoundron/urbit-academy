:: Exercise: The Sudan Function

:: The Sudan function is related to the Ackermann function.
:: https://en.wikipedia.org/wiki/Sudan_function

:: Implement the Sudan function as a gate.


:: Answer
=/  sudan
  |=  [n=@ud x=@ud y=@ud]
  ^-  @ud
  |-
  :: If n == 0, return x + y
  ?:  =(n 0)
    (add x y)
  :: If y === 0 return x
  ?:  =(y 0)
    x
  :: Else return...
  :: f[n-1](
  ::   f[n](x, y-1),
  ::   f[n](x, y-1) + y
  :: )
  %=  $
    n  (dec n)
    x  $(y (dec y))
    y  (add $(y (dec y)) y)
  ==
:: Call f[1](2, 3)
(sudan [1 2 3])
:: should return 27
