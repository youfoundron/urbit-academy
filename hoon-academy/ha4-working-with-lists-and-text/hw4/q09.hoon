:: Q9. List Library I

:: We would like to add up all the even numbers between 1 and 100.
:: We'll tackle this problem in parts.

:: First, compose an expression that uses the list library gate gulf to return a list of all numbers from 1 to 50.

:: Hint: gulf takes two arguments, which are just two atoms.

:: Docs for gulf -- https://docs.urbit.org/language/hoon/reference/stdlib/2b#gulf

:: Answer (tall-form)
%+  gulf  1  50

:: Answer (wide-form)
(gulf 1 50)
