:: Q17.  Logic Gates VI

:: Pin the faces x, y, z to either %.y or %.n and then write the expression 

:: (x OR y) AND (x OR (NOT z))

:: Your code should look like this
:: =/  x  %.y
:: =/  y  %.n
:: =/  z  %.y
:: ________

:: You can use any combination of tall, wide, or sugar.

:: Answer
=/  x  %.y
=/  y  %.n
=/  z  %.y
&(|(x y) |(x !z))
