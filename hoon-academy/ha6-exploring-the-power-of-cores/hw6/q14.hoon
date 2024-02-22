:: Q14.  ++decrement I

:: We would like to use recursion to implement a function that takes a @ud number n and returns n-1.

:: First, pin n to some number using =/ or =+

:: Then pin counter to 0 using =/ or =+

:: Then using the |% (barcen) rune, write a core with a single $ (buc) arm
:: that contains a recursion that uses n and counter to count up to n-1.
:: Don't just solve it with sub or dec from the standard library.

:: Then run the $ arm of the core and see that it returns the correct number.

:: Your code should look like this:

=>
=/  n  5
=/  counter  0
|%
++  $
:: ______
:: ______
:: ______
:: ______
--
$

:: Hint: Use ?: and check for the condition counter + 1 = n using .= (dottis).
:: What do you do if the condition is met? What do you do if the condition isn't met?

:: Hint: For recursion, use %=  with $ as the first argument
:: to modify the core and immediately run the $ arm.


:: Answer
=>
=/  n
  5
=/  counter
  0
|%
++  $
  ~&  counter
  ?:  =(n (add 1 counter))
    counter
  $(counter (add 1 counter))
--
$
