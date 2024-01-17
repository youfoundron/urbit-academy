:: Q3. Boxcar I

:: Take your logic from Q22 of %hw3 and put it in the $ arm of a core.
:: However, pin x to 0 outside of the core, so it becomes the sample.

:: Your code should look like this:
=/  x  0
|%
++  $  
:: __your_logic_here__
--

:: Make sure it's correct by entering it in the dojo.
:: The code returns a core, so the output should look like:

:: < 1.nks
::   [ x=@ud
:: ...

:: Report the full code below:


:: Answer:
=/  x
  0
|%
++  $
  ?:(&((gth x 3) (lte x 5)) 1 0)
--
