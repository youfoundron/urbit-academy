:: Q11.  Quadratic Builder I

:: You probably have learned about quadratic functions, which have the general form:
:: y = ax^2 + bx + c

:: Where a,b,c are some constants, x is the function's input, and y is the output.
:: For example:
:: y = 3x^2 + 2x + 1

:: Build a door which can build a gate representing any quadratic function.
:: For now you can just use @ud, which can only represent non-negative whole numbers.

:: Report the door below.

:: Hint: The door should have a sample that is a triple of 3 @ud
:: and just one arm containing a gate.

:: Hint: To save you some time, this  is ax^2 + bx + c written in Hoon:
:: (add (add (mul (mul a x) x) (mul b x)) c)

:: Hint: Check out the linear function gate-building door section in the notes for guidance.


:: Answer
|_  [a=@ud b=@ud c=@ud]
++  $
  |=  x=@ud
  ^-  @ud
  (add (add (mul (mul a x) x) (mul b x)) c)
--
