:: Q17. Pinning Faces II

:: Using the =/ (tisfas) rune,
:: pin the face "three" to the value 3,
:: pin the face "six" to the value 6,
:: and use them to calculate 3^6 (3 to the power of 6).

:: Hint: =/ takes three children. The first is the face, the second is the value, and the third is the rest of your Hoon code.
:: Check in the Dojo to make sure you get 729

:: Answer (commented)
:: Pin the face "three" to the value 3
=/  two
  2
:: Pin the face "six" to the value 6
=/  six
  6
:: Calculate 3 to the power of 6
(pow 3 6)

:: Answer
=/  two
  2
=/  six
  6
(pow 3 6)
