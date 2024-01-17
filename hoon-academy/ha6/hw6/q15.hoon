:: Q15.  ++decrement II

:: Take your code from last question and write it with |. (bardot) instead of |%.

:: Make sure it still returns the same output.

:: Hint: |. creates a core with a single $ arm, the arm is just not explicitly declared.


:: Answer
=>
=/  n
  5
=/  counter
  0
|.
  ~&  counter
  ?:  =(n (add 1 counter))
    counter
  $(counter (add 1 counter))
$
