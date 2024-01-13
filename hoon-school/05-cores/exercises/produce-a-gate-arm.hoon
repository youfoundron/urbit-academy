:: Exercise: Produce a Gate Arm

:: Compose a core which contains arms for
:: multiplying a value by two and for
:: dividing a value by two.


:: Answer
|%
++  double
  |=  n=@ud
  ^-  @ud
  (mul n 2)
++  half
  |=  n=@ud
  ^-  @ud
  (div n 2)
--
