 :: Q18. Desugaring I

:: I have a gate called mygate which takes an argument that is a triple. I call it like this:
:: (mygate [a b c])

:: Desugar this to only use tall form.

:: Hint: it will take two runes, one % (cen) rune and one : (col) rune

:: mygate doesn't exist so this won't run in the dojo

:: Answer
%-  mygate
:+  a
  b
c
