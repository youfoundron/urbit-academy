:: Q16. Pinning Faces I

:: Using the =/ (tisfas) rune, pin the face "two" to the value 2.
:: Use the face to write the expression (2 + 2)

:: Hint: just modify your answer from Q11.
:: Hint: =/ takes three children. The first is the face, the second is the value, and the third is the rest of your Hoon code.

:: Answer (commented)
:: Use the tisfas rune to pin the face "two" to the value 2
=/  two
  2
:: Use the face to write the expression (2 + 2)
%-  add
[two 2]

:: Answer
=/  two
  2
%-  add  
[two 2]
