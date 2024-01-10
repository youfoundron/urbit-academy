:: Exercise: Double a Value

:: Produce a gate which accepts any @ unsigned integer value and doubles it. Call it double.
:: > (double 5)
:: 10


:: Answer
=/  double
  |=(a=@ (mul a 2))
(double 5)

