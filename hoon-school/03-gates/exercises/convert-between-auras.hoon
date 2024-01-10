:: Exercise: Convert Between Auras

:: Produce a gate which accepts any @ unsigned integer value and converts it to the @p equivalent. Call it myship.

:: Answer
=/  myship
  |=(val=@ `@p`val)
(myship 33)


:: Produce a gate which accepts any @ unsigned integer value and calculates the next neighbor (the @p of the number plus one). Call it myneighbor.

:: Answer
=/  myneighbor
  |=(val=@ `@p`(add 1 val))
(myneighbor 33)


:: Produce a gate which accepts a @p ship name and produces the @ux unsigned hexadecimal integer value of the ship. Call it mynumber.

:: Answer
=/  mynumber
  |=(ship=@p `@ux`ship)
(mynumber ~mep)
