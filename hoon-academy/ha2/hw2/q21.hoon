:: Q21. Desugaring IV

:: Write this expression entirely in tall form:

:: a:[a=1 b=2 c=3]

:: Check in the Dojo to make sure your expression also outputs 1.

:: Hint: it will use 3 unique runes, not 3 total necessarily, but 3 unique.
:: One of the runes will be ^= (check notes for what this does),
:: another will be =<,
:: and another will be a cell-making : (col) rune.

:: Answer (commented)
:: Use tisgal to reverse expression composition and return the face "a" on the following subject
=<  a
:: Express a 3-tuple for the subject
::  Pin the face "a" to the value 1
:+  ^=  a
    1
  :: Pin the face "b" to the value 2
  ^=  b
  2
:: Pin the face "c" to the value 3
^=  c
3

:: Answer
=<  a
:+  ^=  a
    1
  ^=  b
  2
^=  c
3
