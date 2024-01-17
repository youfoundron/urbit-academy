:: Q9.  Investigating mul I

:: Using addressing, report what the battery of the standard library gate mul is.
:: It will be Nock code, so will just be a bunch of numbers in cells.

:: Check out the investigating add section of the notes if you want to walk through something analogous.

:: Hint: mul is an unbuilt arm, pull it out and build it first with => or =<, then call the address.

:: Hint: The battery is at address +2


:: Answer
:: Hoon
=<  +2
mul

:: Battery
[8 [1 0] 8 [1 6 [5 [1 0] 0 60] [0 6] 9 2 10 [60 8 [9 2.398 0 31] 9 2 10 [6 0 124] 0 2] 10 [6 8 [9 36 0 31] 9 2 10 [6 [0 125] 0 14] 0 2] 0 1] 9 2 0 1]