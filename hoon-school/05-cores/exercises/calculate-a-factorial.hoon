:: Exercise: Calculate a Factorial

:: Let's calculate a factorial.
:: The factorial of a number n is...
:: n x (n - 1) x ... x 2 x 1

:: We will introduce a couple of new bits of syntax and a new gate (++dec).
:: Make this into a generator factorial.hoon


:: Answer

:: Save the below code as `factorial.hoon` in the `base/gen` folder of your fake ship
:: In the Dojo, run `|commit %base`. You should see a message indicating that the file has been loaded
:: Run the generator with `+factorial 6`

:: Use bartis to produce a gate (a one-armed core with a sample)
|=  n=@ud

:: Use barhep to produce a trap (a core with one arm `$`) and evaluate it
|-

:: Use sigpam to add a debugging printf
~&  n

:: Use wutcol to branch a boolean test
:::: Use dottis (sugar-syntax) to evaluate if n is equal to 1 
?:  =(n 1)
  :: Evaluate to n if true
  n
:: Evaluate to n * factorial(n - 1) if false
%+  mul
  n
:: Use centis (sugar-syntax) to evaluate the $ arm with n decremented
$(n (dec n))
