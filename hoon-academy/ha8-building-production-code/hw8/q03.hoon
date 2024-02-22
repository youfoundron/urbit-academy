:: Q3. Super Boxcar III

:: Starting with your answer to last question, use ~| (sigbar),
:: to make your code print an appropriate error message to the terminal when the crash occurs.

:: Make sure it works, and report the code below.

:: Optionally, give your message some fabulous color with > >> or >>>

:: ~| takes two children, a Hoon expression to be printed if a crash occurs,
:: and a possibly crashing expression.


:: Answer
|=  x=@ud
^-  @ud 
~| 'Input must not be greater than 10'
?<  (gth x 10)
?:(&((gth x 3) (lte x 5)) 1 0)
