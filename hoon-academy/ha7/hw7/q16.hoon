:: Q16. Functional Tricks I

:: Using cury or curr, write and use a gate that returns %.y if a @ud is less than 100 and %.n otherwise.

:: Hint: cury left binds, curr right binds.


:: Answer
=/ lth-100
  (curr lth 100)
(lth-100 99)
