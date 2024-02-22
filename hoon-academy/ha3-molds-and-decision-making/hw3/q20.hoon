:: Q20. Branching III

:: Pin the face x to any number, then using the ?: (wutcol) rune and the gth gate, write an expression that returns 1 if x > 3 and 0 otherwise.

:: Your code should look like this:

:: =/  x  5
:: __________

:: Use only tall form.

:: Once your code works, try changing the value of x and seeing the output change.

:: Hint: %+  gth  a  b  returns %.y if a>b and %.n otherwise.

:: Answer
=/  x  5
?:  %+  gth  x  3
  1
0