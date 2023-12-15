 :: Q12. Colhep Practice I
:: Using only the :- rune, write the following tree in your Dojo.

::      /  \
::    1   /  \
::        2  /  \
::           3   4
:: If done correctly, it will output [1 2 3 4] to the Dojo -- an equivalent representation.

:: Hint: start from the bottom :-  3  4 forms the cell [3 4]. Build up from there.

:: Answer
:-  1
:-  2
:-  3
4

:: There is also a rune :^ (colket) which directly builds a 4-tuple. It takes 4 children. Use this rune to construct [1 2 3 4] as well.

:: Answer
:^    1
    2
  3
4
