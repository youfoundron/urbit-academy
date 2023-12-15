:: Q1.  Structure vs Value Mode I

:: Desugar the following code to use only tall form runes. The totally desugared code will have no brackets and nothing of the form x=y.
=/  a  [n=1 t='hello']  a

:: Your code should return [n=1 t='hello'] just like the code above does.

:: Hint: Use ^= (kettis) and a : (col) rune.

:: First let's get this code into style-guide acceptable tall format
=/  a
  [
    n=1
    t='hello'
  ]
a

:: Now let's use kettis to desugar the pinning of faces
=/  a
  [
    ^=  n 
    1
    ^=  t
    'hello'
  ]
a

:: Last we'll use colhep to desugar cell construction
=/  a
  :-  ^=  n 
      1
  ^=  t
  'hello'
a

:: Answer
=/  a
  :-  ^=  n 
      1
  ^=  t
  'hello'
a
