:: Q12.  Logic Gates I

:: Logic gates are a fundamental part of computing, and we can simulate them with NOT (?!) AND (?&) and OR (?|) in Hoon.

:: Pin the face x to either %.y or %.n, and then write the expression 
:: NOT x

:: Use tall form. 

:: Your code should look like this
:: =/  x  %.y
:: ________

:: Answer
=/  x
  %.y
?!  x
