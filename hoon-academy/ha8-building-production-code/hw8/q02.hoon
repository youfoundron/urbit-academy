:: Q2. Super Boxcar II

:: Boxcar Inc. doesn't want users to get too crazy with their boxcar functions.

:: Using ?> (wutgar), ?< (wutgal), or ?: and !! (zapzap), make your generator crash if given an input greater than 10.

:: Make sure the code works, and report it below.


:: Answer
|=  x=@ud
^-  @ud
?<  (gth x 10)
?:(&((gth x 3) (lte x 5)) 1 0)