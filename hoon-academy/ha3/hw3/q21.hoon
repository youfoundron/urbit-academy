:: Q21. Branching IV

:: Write your previous answer with sugar syntax for the gate call to gth, and wide form for ?: (wutcol)

:: Hint:
:: Wide for
:: ?:  p
::   q
:: r
:: is
:: ?:(p q r)

:: Sugar:
:: %+  gate  arg1  arg2  -->  (gate arg1 arg2)

:: Answer
=/  x  5
?:((gth x 3) 1 0)
