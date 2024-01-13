:: Exercise: Calculate a sequence of numbers

:: Produce a gate (generator) which accepts a @ud value
:: and calculates the series where the i(th) term in the series is given by the equation:
:: n(i) = i^2
:: that is, the first numbers are 0, 1, 4, 9, 16, 25, etc.

:: For this exercise, you do not need to store these values in a list.
:: Calculate each one but only return the final value.


:: Answer
|=  term-count=@ud
=/  n
  0
=/  i
  0
|-
?:  (gte i (sub term-count 1))
  (pow i 2)
%=  $
  n  (pow i 2)
  i  (add i 1)
==
