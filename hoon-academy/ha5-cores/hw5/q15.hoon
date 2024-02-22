:: Q15. Calculator App I

:: We are going to make a simple calculator app using a core.

:: First, write a cell of two @ud values [a=0 b=0], and pin it to the head of the subject (as the sample).

:: There are a couple ways you can write it,
=+  [a=0 b=0]  
=/  [a=@ud b=@ud]  [0 0]
:: (these are both sugar forms that we know how to convert to tall form, at this point we can just use sugar)

:: Then, write a core with 4 arms. add-arm returns a+b. sub-arm returns a-b. mul-arm returns a*b. div-arm returns a/b.
:: You can just call the standard library gates.

:: Using  => or =<, set this core (with sample) as the subject and call an arm of the core. 

:: The output of your code should be 0, unless you call div-arm, in which case it should give an error message.


:: Answer
=>
:: set the sample
=/  [a=@ud b=@ud]
  [0 0]
:: write the core
|%
++  add-arm  (add a b)
++  sub-arm  (sub a b)
++  mul-arm  (mul a b)
++  div-arm  (div a b)
--
:: call an arm
add-arm
