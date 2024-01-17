:: Q18.  Factorial I

:: The factorial of a number is the multiplication
:: n * (n-1) * (n-2) .... * 2 * 1

:: For example, the factorial of 5 is
:: 5 * 4 * 3 * 2 *1 = 120

:: Pin the face n to a number using =/ or =+.

:: Then use |- (barhep) to write a recursion that calculates the factorial of n.

:: Report your code below.

:: Hint: Check the notes for the code that adds up all the numbers from 1 to n. You can make a solution with very similar logic if you want to peek.

:: Answer
=/  n
  5
:: Use barhep to produce a trap (a core with one arm `$`) and evaluate it
|-
:: Use wutcol to branch a boolean test of n == 1
?:  =(n 1)
:: Evaluate to n if true
  n
:: Evaluate to n * factorial(n - 1) if false
(mul n $(n (dec n)))
