:: Q2.  Structure vs Value Mode II

:: Desugar the following code to use only tall form runes. The totally desugared code will have no brackets and nothing of the form x=y.
^-  [num=@ud text=@t]  [n=1 t='hello']

:: Your code should return [num=1 text='hello'] just like the code above does.

:: Hint: This code first uses structure mode, then value mode. In value mode vs structure mode x=y and [x y] desugar to different runes.
:: Hint: Use your answer from last question, then use two $ (buc) runs we learned in class.
:: Hint: You can start by desugaring the cell structure but keeping num=@ud and text=@t to get an intermediate expression that should still work.

:: First let's get this code into style-guide acceptable tall format
^-  [num=@ud text=@t]
[n=1 t='hello']

:: We can re-use the code from Q1 to take care of desugaring the value portion of the expression
^-  [num=@ud text=@t]
:-  ^=  n
    1
^=  t
'hello'

:: Let's use buccol to describe the structure portion of the expression
^-  $:  num=@ud
        text=@t
    ==
:-  ^=  n
    1
^=  t
'hello'

:: Lastly let's use buctis to desugar the wrapping of faces around auras in our structure
^-  $:  $=  num
        @ud
        $=  text
        @t
    ==
:-  ^=  n
    1
^=  t
'hello'

:: Answer
^-  $:  $=  num
        @ud
        $=  text
        @t
    ==
:-  ^=  n
    1
^=  t
'hello'
