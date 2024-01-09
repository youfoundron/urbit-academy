:: Exercise: “Absolute” Value (Around Ten)

=/  x  10
?:  %-  gte  [x 10]
  1
0

:: Implement a version of the absolute value function, |x|, similar to the Heaviside implementation above.
:: (Translate it to 10 as well since we still can't deal with negative numbers.

:: Test it on a few values like 8, 9, 10, 11, and 12.


:: Answers

:: Testing 8
=/  x
  8
?:  %-  gte  [x 10]
  %-  sub
  [x 10]
%-  sub
[10 x]
:: Should return 2

:: Testing 9
=/  x
  9
?:  %-  gte  [x 10]
  %-  sub
  [x 10]
%-  sub
[10 x]
:: Should return 1

:: Testing 10
=/  x
  10
?:  %-  gte  [x 10]
  %-  sub
  [x 10]
%-  sub
[10 x]
:: Should return 0

:: Testing 11
=/  x
  11
?:  %-  gte  [x 10]
  %-  sub
  [x 10]
%-  sub
[10 x]
:: Should return 1

:: Testing 12
=/  x
  12
?:  %-  gte  [x 10]
  %-  sub
  [x 10]
%-  sub
[10 x]
:: Should return 2