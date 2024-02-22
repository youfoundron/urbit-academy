:: Q17. Working with Tapes I

:: First write an expression that calls the mold builder gate list on the type @tD (with the %- rune). 

:: Then use that expression to cast the following data to a list of @tD (with the ^- rune)

:: ~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]

:: You can use any sort of syntax.

:: Report your code below.

:: Hint: This is basically the same as what you did in Q1 and Q2.

:: Work
:: Call the mold builder gate 'list' on the type @tD
%-  list  @tD
:: Cast the data to a 'list' of @tD
^-  %-  list
    @tD
~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]


:: Answer (tall-form)
^-  %-  list
    @tD
~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]

:: Answer (partial wide-form)
^-  (list @tD)
~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]

:: Answer (sugar syntax)
`(list @tD)`~[`@`114 `@`97 `@`105 `@`110 `@`98 `@`111 `@`119 `@`32 `@`115 `@`104 `@`101 `@`114 `@`98 `@`101 `@`116]