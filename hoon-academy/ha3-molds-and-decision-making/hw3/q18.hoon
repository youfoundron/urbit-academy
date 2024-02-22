:: Q18. Branching I

:: Pin the face x to any number, then using the ?: (wutcol) rune and the .= (dottis) rune, write an expression that returns 1 if x=5 and 0 otherwise.

:: Your code should look like this:

:: =/  x  4
:: __________

:: Use only tall form.

:: Once your code works, try changing the value of x and seeing the output change.

:: Hint: 
:: .=  a  b  
:: returns %.y if a=b and %.n if not

:: Answer
=/  x  4
?:  .=  x  5
  1
0
